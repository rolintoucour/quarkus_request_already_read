package org.acme.getting.started;

import io.quarkus.runtime.StartupEvent;
import io.vertx.core.http.HttpMethod;
import io.vertx.ext.web.Router;
import io.vertx.mutiny.core.Vertx;
import io.vertx.reactivex.core.AbstractVerticle;
import io.vertx.reactivex.ext.web.handler.BodyHandler;
import io.vertx.reactivex.ext.web.handler.CorsHandler;
import io.vertx.reactivex.ext.web.handler.ResponseTimeHandler;
import io.vertx.reactivex.ext.web.handler.SessionHandler;
import io.vertx.reactivex.ext.web.sstore.LocalSessionStore;

import javax.enterprise.event.Observes;

public class TestVerticle extends AbstractVerticle {

    public void TestVerticle(@Observes StartupEvent e, Vertx vertx, Router router) {
        var r = new io.vertx.reactivex.ext.web.Router(router);
        r.route().handler(BodyHandler.create().setBodyLimit(2 * 1024L * 1024L));

        r.post("/test").handler(context -> {
        });

    }
}
