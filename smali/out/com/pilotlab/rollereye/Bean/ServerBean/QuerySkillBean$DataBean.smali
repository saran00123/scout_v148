.class public Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean$DataBean;
.super Ljava/lang/Object;
.source "QuerySkillBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private id:I

.field private status:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean$DataBean;->id:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean$DataBean;->status:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean$DataBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .registers 2

    .line 66
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean$DataBean;->id:I

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 82
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean$DataBean;->status:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean$DataBean;->url:Ljava/lang/String;

    return-void
.end method
