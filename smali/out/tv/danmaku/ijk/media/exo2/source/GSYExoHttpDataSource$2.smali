.class Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource$2;
.super Ljava/lang/Object;
.source "GSYExoHttpDataSource.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZ)Ljava/net/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;)V
    .registers 2

    .line 320
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource$2;->this$0:Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
