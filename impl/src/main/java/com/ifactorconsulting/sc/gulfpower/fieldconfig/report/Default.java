package com.ifactorconsulting.sc.gulfpower.fieldconfig.report;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonView;
import com.ifactorconsulting.sc.domain.AffectedCustomers;
import com.ifactorconsulting.sc.jsonviews.Views;

public abstract class Default {

    @JsonView(Views.Include.class)
    private int customersServed;

    @JsonView(Views.Include.class)
    private AffectedCustomers affectedCustomers;

    @JsonView(Views.Include.class)
    @JsonProperty("etr")
    abstract String getEffectiveEstimatedRestorationTime();


}
