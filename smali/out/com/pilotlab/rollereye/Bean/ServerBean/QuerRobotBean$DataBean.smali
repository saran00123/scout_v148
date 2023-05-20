.class public Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;
.super Ljava/lang/Object;
.source "QuerRobotBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private passwd:Ljava/lang/String;

.field private sn:Ljava/lang/String;

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uid:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswd()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->passwd:Ljava/lang/String;

    return-object v0
.end method

.method public getSn()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->sn:Ljava/lang/String;

    return-object v0
.end method

.method public getTokens()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->tokens:Ljava/util/List;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->key:Ljava/lang/String;

    return-void
.end method

.method public setPasswd(Ljava/lang/String;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->passwd:Ljava/lang/String;

    return-void
.end method

.method public setSn(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->sn:Ljava/lang/String;

    return-void
.end method

.method public setTokens(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->tokens:Ljava/util/List;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->user:Ljava/lang/String;

    return-void
.end method
