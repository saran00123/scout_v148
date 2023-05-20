.class public Lcom/pilotlab/rollereye/Bean/ScratchBean;
.super Ljava/lang/Object;
.source "ScratchBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private createTime:Ljava/lang/String;

.field private flag:I

.field private name:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ScratchBean;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ScratchBean;->flag:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ScratchBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ScratchBean;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ScratchBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ScratchBean;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setFlag(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ScratchBean;->flag:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ScratchBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ScratchBean;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ScratchBean;->url:Ljava/lang/String;

    return-void
.end method
