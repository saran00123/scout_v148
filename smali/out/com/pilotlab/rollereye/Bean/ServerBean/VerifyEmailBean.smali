.class public Lcom/pilotlab/rollereye/Bean/ServerBean/VerifyEmailBean;
.super Ljava/lang/Object;
.source "VerifyEmailBean.java"


# instance fields
.field private code:I

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

    .line 16
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/VerifyEmailBean;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/VerifyEmailBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/VerifyEmailBean;->success:Z

    return v0
.end method

.method public setCode(I)V
    .registers 2

    .line 20
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/VerifyEmailBean;->code:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/VerifyEmailBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/VerifyEmailBean;->success:Z

    return-void
.end method
