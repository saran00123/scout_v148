.class public Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;
.super Ljava/lang/Object;
.source "MessageBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtBean"
.end annotation


# instance fields
.field private duration:D

.field private id:D

.field private name:Ljava/lang/String;

.field private remark:Ljava/lang/String;

.field private size:D

.field private status:D

.field private thumbUrl:Ljava/lang/String;

.field private type:D

.field private url:Ljava/lang/String;

.field private userId:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()D
    .registers 3

    .line 136
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->duration:D

    return-wide v0
.end method

.method public getId()D
    .registers 3

    .line 168
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->id:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()D
    .registers 3

    .line 144
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->size:D

    return-wide v0
.end method

.method public getStatus()D
    .registers 3

    .line 218
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->status:D

    return-wide v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .registers 2

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->thumbUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Common/ServerConstent;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getType()D
    .registers 3

    .line 176
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->type:D

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Common/ServerConstent;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getUserId()D
    .registers 3

    .line 197
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->userId:D

    return-wide v0
.end method

.method public setDuration(D)V
    .registers 3

    .line 140
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->duration:D

    return-void
.end method

.method public setId(D)V
    .registers 3

    .line 172
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->id:D

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->remark:Ljava/lang/String;

    return-void
.end method

.method public setSize(D)V
    .registers 3

    .line 148
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->size:D

    return-void
.end method

.method public setStatus(D)V
    .registers 3

    .line 222
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->status:D

    return-void
.end method

.method public setThumbUrl(Ljava/lang/String;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->thumbUrl:Ljava/lang/String;

    return-void
.end method

.method public setType(D)V
    .registers 3

    .line 180
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->type:D

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->url:Ljava/lang/String;

    return-void
.end method

.method public setUserId(D)V
    .registers 3

    .line 201
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->userId:D

    return-void
.end method
