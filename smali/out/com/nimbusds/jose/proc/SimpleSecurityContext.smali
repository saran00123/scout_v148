.class public Lcom/nimbusds/jose/proc/SimpleSecurityContext;
.super Ljava/util/HashMap;
.source "SimpleSecurityContext.java"

# interfaces
.implements Lcom/nimbusds/jose/proc/SecurityContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/nimbusds/jose/proc/SecurityContext;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method
