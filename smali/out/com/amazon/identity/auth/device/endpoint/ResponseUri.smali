.class public Lcom/amazon/identity/auth/device/endpoint/ResponseUri;
.super Ljava/lang/Object;
.source "ResponseUri.java"


# static fields
.field public static final STATE_PARAMETER_NAME:Ljava/lang/String; = "state"


# instance fields
.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/ResponseUri;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getStateValues()Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/ResponseUri;->uri:Landroid/net/Uri;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_35

    .line 26
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "&"

    .line 27
    invoke-static {v0, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 28
    array-length v4, v0

    move v5, v2

    :goto_1a
    if-ge v5, v4, :cond_34

    aget-object v6, v0, v5

    const-string v7, "="

    .line 29
    invoke-static {v6, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_31

    .line 30
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_31

    .line 31
    aget-object v7, v6, v2

    aget-object v6, v6, v1

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_34
    return-object v3

    .line 24
    :cond_35
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/ResponseUri;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Response does not have a state parameter: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
.end method
