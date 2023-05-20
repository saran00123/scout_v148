.class public Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;
.super Ljava/lang/Object;


# static fields
.field public static final DEBUG:I = 0x2

.field public static final ERROR:I = 0x0

.field public static final IMPORTANT_LOG_TAG:Ljava/lang/String; = "[AMS]"

.field public static final INFO:I = 0x1

.field static listener:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/ams/common/logger/LoggerListener;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile log_level:I = 0x3


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->listener:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/alibaba/sdk/android/ams/common/logger/LoggerListener;)V
    .registers 2

    sget-object v0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->listener:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger$1;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger$1;-><init>(Lcom/alibaba/sdk/android/ams/common/logger/LoggerListener;)V

    invoke-static {v0}, Lcom/taobao/accs/utl/AccsLogger;->addILogger(Lcom/alibaba/sdk/android/logger/ILogger;)V

    return-void
.end method

.method public static clearListeners()V
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->listener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;
    .registers 2

    new-instance v0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;-><init>()V

    iput-object p0, v0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 7

    sget v0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->log_level:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_12

    if-nez p2, :cond_d

    iget-object v0, p0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_d
    iget-object v0, p0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_12
    sget-object v0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->listener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/ams/common/logger/LoggerListener;

    iget-object v2, p0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/alibaba/sdk/android/ams/common/logger/LoggerListener;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_18

    :cond_2a
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 7

    sget v0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->log_level:I

    if-ltz v0, :cond_11

    if-nez p2, :cond_c

    iget-object v0, p0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_c
    iget-object v0, p0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_11
    sget-object v0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->listener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/ams/common/logger/LoggerListener;

    iget-object v2, p0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/alibaba/sdk/android/ams/common/logger/LoggerListener;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_17

    :cond_29
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 7

    sget v0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->log_level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    if-nez p2, :cond_d

    iget-object v0, p0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_d
    iget-object v0, p0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_12
    sget-object v0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->listener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/ams/common/logger/LoggerListener;

    iget-object v2, p0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/alibaba/sdk/android/ams/common/logger/LoggerListener;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_18

    :cond_2a
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 7

    sget v0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->log_level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1a

    if-nez p2, :cond_d

    iget-object v0, p0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_d
    if-nez p1, :cond_15

    iget-object v0, p0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :cond_15
    iget-object v0, p0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    :goto_1a
    sget-object v0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->listener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/ams/common/logger/LoggerListener;

    iget-object v2, p0, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/alibaba/sdk/android/ams/common/logger/LoggerListener;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_20

    :cond_32
    return-void
.end method

.method public w(Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method
