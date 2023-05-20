.class public Lcom/alibaba/sdk/android/tbrest/rest/d;
.super Ljava/lang/Object;
.source "RestReqDataBuildResult.java"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/d;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/rest/d;->a:Ljava/util/Map;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/rest/d;->g:Ljava/lang/String;

    return-void
.end method
