.class public Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean;
.super Ljava/lang/Object;
.source "CheckOutBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean$DataBean;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean$DataBean;

.field private msg:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .line 21
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean;->code:I

    return v0
.end method

.method public getData()Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean$DataBean;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean;->data:Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean$DataBean;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean;->success:Z

    return v0
.end method

.method public setCode(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean;->code:I

    return-void
.end method

.method public setData(Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean$DataBean;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean;->data:Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean$DataBean;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .registers 2

    .line 41
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean;->success:Z

    return-void
.end method
