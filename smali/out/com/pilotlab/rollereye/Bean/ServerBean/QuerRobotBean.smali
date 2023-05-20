.class public Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;
.super Ljava/lang/Object;
.source "QuerRobotBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;->code:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;->data:Ljava/util/List;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;->success:Z

    return v0
.end method

.method public setCode(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;->code:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;->data:Ljava/util/List;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .registers 2

    .line 41
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;->success:Z

    return-void
.end method
