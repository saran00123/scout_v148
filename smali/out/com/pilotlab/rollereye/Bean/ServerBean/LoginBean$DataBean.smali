.class public Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;
.super Ljava/lang/Object;
.source "LoginBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private badge:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private msgNo:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBadge()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->badge:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgNo()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->msgNo:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setBadge(Ljava/lang/String;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->badge:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->email:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setMsgNo(Ljava/lang/String;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->msgNo:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->username:Ljava/lang/String;

    return-void
.end method
