.class public Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean$DataBean;
.super Ljava/lang/Object;
.source "CheckOutBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private clientSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientSecret()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean$DataBean;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public setClientSecret(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean$DataBean;->clientSecret:Ljava/lang/String;

    return-void
.end method
