.class public Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean$DataBean;
.super Ljava/lang/Object;
.source "QueryPushMessageSettingBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private appPush:I

.field private emailPush:I

.field private sn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppPush()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean$DataBean;->appPush:I

    return v0
.end method

.method public getEmailPush()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean$DataBean;->emailPush:I

    return v0
.end method

.method public getSn()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean$DataBean;->sn:Ljava/lang/String;

    return-object v0
.end method

.method public setAppPush(I)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean$DataBean;->appPush:I

    return-void
.end method

.method public setEmailPush(I)V
    .registers 2

    .line 76
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean$DataBean;->emailPush:I

    return-void
.end method

.method public setSn(Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean$DataBean;->sn:Ljava/lang/String;

    return-void
.end method
