.class public Lcom/pilotlab/rollereye/Bean/WayPointBean;
.super Ljava/lang/Object;
.source "WayPointBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private createTime:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;


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

    .line 21
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/WayPointBean;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/WayPointBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/WayPointBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/WayPointBean;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 17
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/WayPointBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/WayPointBean;->name:Ljava/lang/String;

    return-void
.end method
