.class public Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;
    }
.end annotation


# instance fields
.field private appKey:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private application:Landroid/app/Application;

.field private disableChannelProcess:Z

.field private disableForegroundCheck:Z

.field private loopInterval:J

.field private loopStartChannel:Z


# direct methods
.method protected constructor <init>(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->access$000(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;)Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->application:Landroid/app/Application;

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->access$100(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->appKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->access$200(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->appSecret:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->access$300(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->disableChannelProcess:Z

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->access$400(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->loopStartChannel:Z

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->access$500(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->loopInterval:J

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;->access$600(Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->disableForegroundCheck:Z

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSecret()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->appSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->application:Landroid/app/Application;

    return-object v0
.end method

.method public getLoopInterval()J
    .registers 3

    iget-wide v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->loopInterval:J

    return-wide v0
.end method

.method public isDisableChannelProcess()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->disableChannelProcess:Z

    return v0
.end method

.method public isDisableForegroundCheck()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->disableForegroundCheck:Z

    return v0
.end method

.method public isLoopStartChannel()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/noonesdk/PushInitConfig;->loopStartChannel:Z

    return v0
.end method
