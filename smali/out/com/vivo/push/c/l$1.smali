.class final Lcom/vivo/push/c/l$1;
.super Ljava/lang/Object;
.source "OnNotificationArrivedReceiveTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/push/c/l;->a(Lcom/vivo/push/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/push/model/InsideNotificationItem;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/vivo/push/b/q;

.field final synthetic d:Lcom/vivo/push/c/l;


# direct methods
.method constructor <init>(Lcom/vivo/push/c/l;Lcom/vivo/push/model/InsideNotificationItem;Ljava/lang/String;Lcom/vivo/push/b/q;)V
    .registers 5

    .line 105
    iput-object p1, p0, Lcom/vivo/push/c/l$1;->d:Lcom/vivo/push/c/l;

    iput-object p2, p0, Lcom/vivo/push/c/l$1;->a:Lcom/vivo/push/model/InsideNotificationItem;

    iput-object p3, p0, Lcom/vivo/push/c/l$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/push/c/l$1;->c:Lcom/vivo/push/b/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 109
    iget-object v0, p0, Lcom/vivo/push/c/l$1;->d:Lcom/vivo/push/c/l;

    iget-object v0, v0, Lcom/vivo/push/c/l;->c:Lcom/vivo/push/sdk/PushMessageCallback;

    iget-object v1, p0, Lcom/vivo/push/c/l$1;->d:Lcom/vivo/push/c/l;

    invoke-static {v1}, Lcom/vivo/push/c/l;->a(Lcom/vivo/push/c/l;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/push/c/l$1;->a:Lcom/vivo/push/model/InsideNotificationItem;

    invoke-static {v2}, Lcom/vivo/push/util/o;->a(Lcom/vivo/push/model/InsideNotificationItem;)Lcom/vivo/push/model/UPSNotificationMessage;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/vivo/push/sdk/PushMessageCallback;->onNotificationMessageArrived(Landroid/content/Context;Lcom/vivo/push/model/UPSNotificationMessage;)Z

    move-result v0

    const-string v1, "OnNotificationArrivedTask"

    if-eqz v0, :cond_4e

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pkg name : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/push/c/l$1;->d:Lcom/vivo/push/c/l;

    invoke-static {v2}, Lcom/vivo/push/c/l;->b(Lcom/vivo/push/c/l;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u5e94\u7528\u4e3b\u52a8\u62e6\u622a\u901a\u77e5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/vivo/push/c/l$1;->d:Lcom/vivo/push/c/l;

    invoke-static {v0}, Lcom/vivo/push/c/l;->c(Lcom/vivo/push/c/l;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u5e94\u7528\u4e3b\u52a8\u62e6\u622a\u901a\u77e5\uff0c\u5bfc\u81f4\u901a\u77e5\u65e0\u6cd5\u5c55\u793a\uff0c\u5982\u9700\u6253\u5f00\u8bf7\u5728onNotificationMessageArrived\u4e2d\u8fd4\u56defalse"

    invoke-static {v0, v1}, Lcom/vivo/push/util/n;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/vivo/push/c/l$1;->d:Lcom/vivo/push/c/l;

    iget-object v1, p0, Lcom/vivo/push/c/l$1;->b:Ljava/lang/String;

    const/16 v2, 0x848

    invoke-static {v0, v1, v2}, Lcom/vivo/push/c/l;->a(Lcom/vivo/push/c/l;Ljava/lang/String;I)V

    return-void

    .line 116
    :cond_4e
    new-instance v0, Lcom/vivo/push/util/j;

    iget-object v2, p0, Lcom/vivo/push/c/l$1;->d:Lcom/vivo/push/c/l;

    invoke-static {v2}, Lcom/vivo/push/c/l;->d(Lcom/vivo/push/c/l;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/push/c/l$1;->a:Lcom/vivo/push/model/InsideNotificationItem;

    iget-object v2, p0, Lcom/vivo/push/c/l$1;->c:Lcom/vivo/push/b/q;

    .line 1022
    iget-wide v6, v2, Lcom/vivo/push/b/v;->e:J

    .line 116
    iget-object v2, p0, Lcom/vivo/push/c/l$1;->d:Lcom/vivo/push/c/l;

    iget-object v2, v2, Lcom/vivo/push/c/l;->c:Lcom/vivo/push/sdk/PushMessageCallback;

    iget-object v3, p0, Lcom/vivo/push/c/l$1;->d:Lcom/vivo/push/c/l;

    invoke-static {v3}, Lcom/vivo/push/c/l;->e(Lcom/vivo/push/c/l;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/vivo/push/sdk/PushMessageCallback;->isAllowNet(Landroid/content/Context;)Z

    move-result v8

    new-instance v9, Lcom/vivo/push/c/l$1$1;

    invoke-direct {v9, p0}, Lcom/vivo/push/c/l$1$1;-><init>(Lcom/vivo/push/c/l$1;)V

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/vivo/push/util/j;-><init>(Landroid/content/Context;Lcom/vivo/push/model/InsideNotificationItem;JZLcom/vivo/push/c/l$a;)V

    .line 130
    iget-object v2, p0, Lcom/vivo/push/c/l$1;->a:Lcom/vivo/push/model/InsideNotificationItem;

    invoke-virtual {v2}, Lcom/vivo/push/model/InsideNotificationItem;->isShowBigPicOnMobileNet()Z

    move-result v2

    .line 131
    iget-object v3, p0, Lcom/vivo/push/c/l$1;->a:Lcom/vivo/push/model/InsideNotificationItem;

    invoke-virtual {v3}, Lcom/vivo/push/model/InsideNotificationItem;->getPurePicUrl()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 133
    iget-object v3, p0, Lcom/vivo/push/c/l$1;->a:Lcom/vivo/push/model/InsideNotificationItem;

    invoke-virtual {v3}, Lcom/vivo/push/model/InsideNotificationItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v3

    .line 135
    :cond_8b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_ef

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "showCode="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vivo/push/util/n;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_e4

    .line 138
    iget-object v1, p0, Lcom/vivo/push/c/l$1;->d:Lcom/vivo/push/c/l;

    invoke-static {v1}, Lcom/vivo/push/c/l;->h(Lcom/vivo/push/c/l;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "mobile net unshow"

    invoke-static {v1, v2}, Lcom/vivo/push/util/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/vivo/push/c/l$1;->d:Lcom/vivo/push/c/l;

    invoke-static {v1}, Lcom/vivo/push/c/l;->i(Lcom/vivo/push/c/l;)Landroid/content/Context;

    move-result-object v1

    .line 1056
    invoke-static {v1}, Lcom/vivo/push/util/p;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_c0

    :goto_be
    move v1, v6

    goto :goto_d6

    .line 1060
    :cond_c0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v4, :cond_c9

    goto :goto_be

    .line 1064
    :cond_c9
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v7, :cond_d1

    move v1, v5

    goto :goto_d6

    :cond_d1
    if-nez v1, :cond_d5

    move v1, v7

    goto :goto_d6

    :cond_d5
    const/4 v1, 0x3

    :goto_d6
    if-ne v1, v7, :cond_ef

    const/4 v3, 0x0

    .line 141
    iget-object v1, p0, Lcom/vivo/push/c/l$1;->a:Lcom/vivo/push/model/InsideNotificationItem;

    invoke-virtual {v1}, Lcom/vivo/push/model/InsideNotificationItem;->clearCoverUrl()V

    .line 142
    iget-object v1, p0, Lcom/vivo/push/c/l$1;->a:Lcom/vivo/push/model/InsideNotificationItem;

    invoke-virtual {v1}, Lcom/vivo/push/model/InsideNotificationItem;->clearPurePicUrl()V

    goto :goto_ef

    .line 145
    :cond_e4
    iget-object v1, p0, Lcom/vivo/push/c/l$1;->d:Lcom/vivo/push/c/l;

    invoke-static {v1}, Lcom/vivo/push/c/l;->j(Lcom/vivo/push/c/l;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "mobile net show"

    invoke-static {v1, v2}, Lcom/vivo/push/util/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    :cond_ef
    :goto_ef
    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/push/c/l$1;->a:Lcom/vivo/push/model/InsideNotificationItem;

    invoke-virtual {v2}, Lcom/vivo/push/model/InsideNotificationItem;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v3, v1, v7

    invoke-virtual {v0, v1}, Lcom/vivo/push/util/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
