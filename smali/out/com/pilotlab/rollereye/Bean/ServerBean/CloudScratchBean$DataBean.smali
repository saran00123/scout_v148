.class public Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;
.super Ljava/lang/Object;
.source "CloudScratchBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private date:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 73
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 77
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;->name:Ljava/lang/String;

    return-void
.end method
