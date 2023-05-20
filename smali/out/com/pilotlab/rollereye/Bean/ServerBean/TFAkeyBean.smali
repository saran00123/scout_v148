.class public Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean;
.super Ljava/lang/Object;
.source "TFAkeyBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean$DataBean;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean$DataBean;

.field private msg:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean;->code:I

    return v0
.end method

.method public getData()Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean$DataBean;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean;->data:Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean$DataBean;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 34
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean;->success:Z

    return v0
.end method

.method public setCode(I)V
    .registers 2

    .line 22
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean;->code:I

    return-void
.end method

.method public setData(Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean$DataBean;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean;->data:Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean$DataBean;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean;->success:Z

    return-void
.end method
