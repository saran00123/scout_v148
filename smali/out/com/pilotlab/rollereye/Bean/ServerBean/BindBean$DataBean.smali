.class public Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;
.super Ljava/lang/Object;
.source "BindBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private passwd:Ljava/lang/String;

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

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswd()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->passwd:Ljava/lang/String;

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

    .line 108
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->tokens:Ljava/util/List;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->key:Ljava/lang/String;

    return-void
.end method

.method public setPasswd(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->passwd:Ljava/lang/String;

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

    .line 112
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->tokens:Ljava/util/List;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->user:Ljava/lang/String;

    return-void
.end method
