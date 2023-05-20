.class public Lcom/pilotlab/rollereye/Bean/ServerBean/RecommendScratchBean$DataBean;
.super Ljava/lang/Object;
.source "RecommendScratchBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/RecommendScratchBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private author:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private description:Ljava/lang/String;

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
.method public getAuthor()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/RecommendScratchBean$DataBean;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/RecommendScratchBean$DataBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/RecommendScratchBean$DataBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/RecommendScratchBean$DataBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/RecommendScratchBean$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/RecommendScratchBean$DataBean;->author:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/RecommendScratchBean$DataBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/RecommendScratchBean$DataBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 99
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/RecommendScratchBean$DataBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/RecommendScratchBean$DataBean;->name:Ljava/lang/String;

    return-void
.end method
