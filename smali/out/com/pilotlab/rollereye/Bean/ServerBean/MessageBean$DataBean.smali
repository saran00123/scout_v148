.class public Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;
.super Ljava/lang/Object;
.source "MessageBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private ext:Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;

.field private id:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->ext:Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setExt(Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->ext:Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->title:Ljava/lang/String;

    return-void
.end method
