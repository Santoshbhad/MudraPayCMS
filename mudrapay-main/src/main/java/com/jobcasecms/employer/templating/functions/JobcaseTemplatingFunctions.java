package com.jobcasecms.employer.templating.functions;

import java.util.UUID;

public class JobcaseTemplatingFunctions {

    public static final String TEMPLATING_NAME = "jobcasefn";

    public String generateUuid() {
        return UUID.randomUUID().toString();
    }
}
