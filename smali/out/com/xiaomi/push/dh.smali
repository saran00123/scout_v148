.class public Lcom/xiaomi/push/dh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;


# instance fields
.field private a:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

.field private b:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;


# direct methods
.method public constructor <init>(Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/dh;->a:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    iput-object v0, p0, Lcom/xiaomi/push/dh;->b:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    iput-object p1, p0, Lcom/xiaomi/push/dh;->a:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    iput-object p2, p0, Lcom/xiaomi/push/dh;->b:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/dh;->a:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;->log(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/push/dh;->b:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1}, Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;->log(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/dh;->a:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/push/dh;->b:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
