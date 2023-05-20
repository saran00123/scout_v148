.class public abstract Lcom/amazon/identity/auth/device/endpoint/AbstractPandaGetRequest;
.super Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;
.source "AbstractPandaGetRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/identity/auth/device/endpoint/Response;",
        ">",
        "Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V

    return-void
.end method


# virtual methods
.method protected setHttpMethod(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const-string v0, "GET"

    .line 24
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method protected writeBody(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 2

    return-void
.end method
