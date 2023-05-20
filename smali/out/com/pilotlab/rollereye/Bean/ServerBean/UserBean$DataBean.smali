.class public Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;
.super Ljava/lang/Object;
.source "UserBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private cloud:I

.field private create_time:Ljava/lang/String;

.field private dueDay:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private level:Ljava/lang/String;

.field private member:I

.field private monitoring_num:Ljava/lang/String;

.field private scratch_num:Ljava/lang/String;

.field private scratch_star:Ljava/lang/String;

.field private tfa:I

.field private totp:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCloud()I
    .registers 2

    .line 148
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->cloud:I

    return v0
.end method

.method public getCreate_time()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->create_time:Ljava/lang/String;

    return-object v0
.end method

.method public getDueDay()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->dueDay:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getMember()I
    .registers 2

    .line 156
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->member:I

    return v0
.end method

.method public getMonitoring_num()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->monitoring_num:Ljava/lang/String;

    return-object v0
.end method

.method public getScratch_num()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->scratch_num:Ljava/lang/String;

    return-object v0
.end method

.method public getScratch_star()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->scratch_star:Ljava/lang/String;

    return-object v0
.end method

.method public getTfa()I
    .registers 2

    .line 140
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->tfa:I

    return v0
.end method

.method public getTotp()I
    .registers 2

    .line 164
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->totp:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setCloud(I)V
    .registers 2

    .line 152
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->cloud:I

    return-void
.end method

.method public setCreate_time(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->create_time:Ljava/lang/String;

    return-void
.end method

.method public setDueDay(Ljava/lang/String;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->dueDay:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->email:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->level:Ljava/lang/String;

    return-void
.end method

.method public setMember(I)V
    .registers 2

    .line 160
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->member:I

    return-void
.end method

.method public setMonitoring_num(Ljava/lang/String;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->monitoring_num:Ljava/lang/String;

    return-void
.end method

.method public setScratch_num(Ljava/lang/String;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->scratch_num:Ljava/lang/String;

    return-void
.end method

.method public setScratch_star(Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->scratch_star:Ljava/lang/String;

    return-void
.end method

.method public setTfa(I)V
    .registers 2

    .line 144
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->tfa:I

    return-void
.end method

.method public setTotp(I)V
    .registers 2

    .line 168
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->totp:I

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->username:Ljava/lang/String;

    return-void
.end method
