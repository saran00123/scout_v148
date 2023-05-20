.class public Lcom/pilotlab/rollereye/Bean/ServerBean/EmailCodeBean$DataBean;
.super Ljava/lang/Object;
.source "EmailCodeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/EmailCodeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private msgNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgNo()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/EmailCodeBean$DataBean;->msgNo:Ljava/lang/String;

    return-object v0
.end method

.method public setMsgNo(Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/EmailCodeBean$DataBean;->msgNo:Ljava/lang/String;

    return-void
.end method
