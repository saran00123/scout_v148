.class public Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean$DataBean;
.super Ljava/lang/Object;
.source "TFAkeyBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private secretKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecretKey()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean$DataBean;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean$DataBean;->secretKey:Ljava/lang/String;

    return-void
.end method
