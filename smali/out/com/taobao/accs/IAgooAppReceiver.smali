.class public abstract Lcom/taobao/accs/IAgooAppReceiver;
.super Lcom/taobao/accs/d;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/taobao/accs/d;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllServices()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getAppkey()Ljava/lang/String;
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onBindUser(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onUnbindApp(I)V
    .registers 2

    return-void
.end method

.method public onUnbindUser(I)V
    .registers 2

    return-void
.end method
