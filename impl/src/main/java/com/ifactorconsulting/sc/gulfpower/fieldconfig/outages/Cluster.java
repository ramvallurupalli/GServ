package com.ifactorconsulting.sc.gulfpower.fieldconfig.outages;

import com.fasterxml.jackson.annotation.JsonView;
import com.ifactorconsulting.sc.domain.AffectedCustomers;
import com.ifactorconsulting.sc.jsonviews.Views;

public abstract class Cluster {

    @JsonView(Views.Include.class)
    private AffectedCustomers affectedCustomers;

    @JsonView(Views.Include.class)
    abstract String getEffectiveEstimatedRestorationTime();

    @JsonView(Views.Include.class)
    private int outagesCount;

}
