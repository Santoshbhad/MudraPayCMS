package com.mudrapay.employer.setup;

import com.mudrapay.employer.templating.functions.JobcaseTemplatingFunctions;
import info.magnolia.jcr.util.NodeTypes;
import info.magnolia.module.DefaultModuleVersionHandler;
import info.magnolia.module.InstallContext;
import info.magnolia.module.delta.ArrayDelegateTask;
import info.magnolia.module.delta.CheckAndModifyPropertyValueTask;
import info.magnolia.module.delta.CreateNodeTask;
import info.magnolia.module.delta.IsAdminInstanceDelegateTask;
import info.magnolia.module.delta.IsAuthorInstanceDelegateTask;
import info.magnolia.module.delta.NodeExistsDelegateTask;
import info.magnolia.module.delta.PropertyExistsDelegateTask;
import info.magnolia.module.delta.PropertyValueDelegateTask;
import info.magnolia.module.delta.RemoveNodeTask;
import info.magnolia.module.delta.SetPropertyTask;
import info.magnolia.module.delta.Task;
import info.magnolia.module.delta.WarnTask;
import info.magnolia.module.model.Version;
import info.magnolia.module.site.setup.DefaultSiteExistsDelegateTask;
import info.magnolia.rendering.module.setup.InstallRendererContextAttributeTask;
import info.magnolia.repository.RepositoryConstants;

import java.util.ArrayList;
import java.util.List;

import static info.magnolia.repository.RepositoryConstants.CONFIG;

/**
 * This class is optional and lets you manage the versions of your module,
 * by registering "deltas" to maintain the module's configuration, or other type of content.
 * If you don't need this, simply remove the reference to this class in the module descriptor xml.
 *
 * @see info.magnolia.module.DefaultModuleVersionHandler
 * @see info.magnolia.module.ModuleVersionHandler
 * @see info.magnolia.module.delta.Task
 */
public class JobCaseEmployerModuleVersionHandler extends DefaultModuleVersionHandler {

    private static final String DEFAULT_URI_NODEPATH = "/modules/ui-admincentral/virtualUriMappings/default";
    private static final String DEFAULT_URI = "redirect:/home.html";

    private final Task setDefaultUriOnPublicInstance = new PropertyValueDelegateTask("Set default URI to home page", "/modules/site/config/site", "extends", "/modules/mudrapay-main/config/jobcase", false,
            new IsAuthorInstanceDelegateTask("Set default URI to home page", String.format("Set default URI to point to '%s'", DEFAULT_URI), null,
                    new NodeExistsDelegateTask("", DEFAULT_URI_NODEPATH,
                            new SetPropertyTask(RepositoryConstants.CONFIG, DEFAULT_URI_NODEPATH, "toUri", DEFAULT_URI),
                            new WarnTask("Set default URI to home page", "Could not set default URI to home travel page, default mapping was not found."))));

    private final Task setupTravelSiteAsActiveSite = new NodeExistsDelegateTask("Set active site", "/modules/site/config/site",
            new PropertyExistsDelegateTask("Check extends property and update or create it", "/modules/site/config/site", "extends",
                    new CheckAndModifyPropertyValueTask("/modules/site/config/site", "extends", "/modules/standard-templating-kit/config/site", "/modules/mudrapay-main/config/jobcase"),
                    new DefaultSiteExistsDelegateTask("", "",
                            new SetPropertyTask(RepositoryConstants.CONFIG, "/modules/site/config/site", "extends", "/modules/mudrapay-main/config/jobcase"))),
            new ArrayDelegateTask("",
                    new CreateNodeTask("", "/modules/site/config", "site", NodeTypes.ContentNode.NAME),
                    new SetPropertyTask(RepositoryConstants.CONFIG, "/modules/site/config/site", "extends", "/modules/mudrapay-main/config/jobcase")
            ));

    private Task removeDefaultPublisher = new IsAdminInstanceDelegateTask("Remove default publisher magnoliaPublic8080",
            new RemoveNodeTask(CONFIG, "/modules/publishing-core/config/receivers/magnoliaPublic8080")
    );

    private final Task registerTemplatingFunctions = new ArrayDelegateTask("Register custom TemplatingFunctions",
            new InstallRendererContextAttributeTask("rendering", "freemarker", JobcaseTemplatingFunctions.TEMPLATING_NAME, JobcaseTemplatingFunctions.class.getName()),
            new InstallRendererContextAttributeTask("site", "site", JobcaseTemplatingFunctions.TEMPLATING_NAME, JobcaseTemplatingFunctions.class.getName())
    );

    @Override
    protected List<Task> getExtraInstallTasks(InstallContext installContext) {
        final List<Task> tasks = new ArrayList<>();
        tasks.addAll(super.getExtraInstallTasks(installContext));
        tasks.add(setupTravelSiteAsActiveSite);
        tasks.add(setDefaultUriOnPublicInstance);
        tasks.add(removeDefaultPublisher);
        tasks.add(registerTemplatingFunctions);
        return tasks;
    }

    @Override
    protected List<Task> getDefaultUpdateTasks(Version forVersion) {
        final List<Task> tasks =  super.getDefaultUpdateTasks(forVersion);
        tasks.add(registerTemplatingFunctions);
        // put additional update tasks here
        return tasks;
    }
}
