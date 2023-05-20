.class public final Lcom/vivo/push/util/j;
.super Landroid/os/AsyncTask;
.source "ImageDownTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/vivo/push/model/InsideNotificationItem;

.field private c:J

.field private d:Z

.field private e:I

.field private f:Lcom/vivo/push/c/l$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vivo/push/model/InsideNotificationItem;JZLcom/vivo/push/c/l$a;)V
    .registers 8

    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/vivo/push/util/j;->e:I

    .line 35
    iput-object p1, p0, Lcom/vivo/push/util/j;->a:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/vivo/push/util/j;->b:Lcom/vivo/push/model/InsideNotificationItem;

    .line 37
    iput-wide p3, p0, Lcom/vivo/push/util/j;->c:J

    .line 38
    iput-boolean p5, p0, Lcom/vivo/push/util/j;->d:Z

    .line 39
    iput-object p6, p0, Lcom/vivo/push/util/j;->f:Lcom/vivo/push/c/l$a;

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/vivo/push/util/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->getInstance(Landroid/content/Context;)Lcom/vivo/push/cache/ClientConfigManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->getNotifyStyle()I

    move-result v0

    iput v0, p0, Lcom/vivo/push/util/j;->e:I

    .line 46
    iget-boolean v0, p0, Lcom/vivo/push/util/j;->d:Z

    const/4 v1, 0x0

    const-string v2, "ImageDownTask"

    if-nez v0, :cond_19

    const-string p1, "bitmap is not display by forbid net"

    .line 47
    invoke-static {v2, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 50
    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_20
    const/4 v5, 0x2

    if-ge v4, v5, :cond_b5

    .line 52
    aget-object v5, p1, v4

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "imgUrl="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ac

    .line 58
    :try_start_44
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    const/16 v6, 0x7530

    .line 60
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v6, 0x1

    .line 61
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 62
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 63
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 64
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "code="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/vivo/push/util/n;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_80

    .line 67
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_7b
    .catch Ljava/net/MalformedURLException; {:try_start_44 .. :try_end_7b} :catch_96
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_7b} :catch_8a
    .catchall {:try_start_44 .. :try_end_7b} :catchall_88

    .line 68
    :try_start_7b
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_7f
    .catch Ljava/net/MalformedURLException; {:try_start_7b .. :try_end_7f} :catch_97
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7f} :catch_8b
    .catchall {:try_start_7b .. :try_end_7f} :catchall_a4

    goto :goto_82

    :cond_80
    move-object v5, v1

    move-object v6, v5

    :goto_82
    if-eqz v5, :cond_a0

    .line 77
    :try_start_84
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_a0

    goto :goto_a0

    :catchall_88
    move-exception p1

    goto :goto_a6

    :catch_8a
    move-object v5, v1

    :catch_8b
    :try_start_8b
    const-string v6, "IOException"

    .line 73
    invoke-static {v2, v6}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_a4

    if-eqz v5, :cond_9f

    .line 77
    :goto_92
    :try_start_92
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_9f

    goto :goto_9f

    :catch_96
    move-object v5, v1

    :catch_97
    :try_start_97
    const-string v6, "MalformedURLException"

    .line 71
    invoke-static {v2, v6}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_a4

    if-eqz v5, :cond_9f

    goto :goto_92

    :catch_9f
    :cond_9f
    :goto_9f
    move-object v6, v1

    .line 83
    :catch_a0
    :cond_a0
    :goto_a0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    :catchall_a4
    move-exception p1

    move-object v1, v5

    :goto_a6
    if-eqz v1, :cond_ab

    .line 77
    :try_start_a8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_ab

    .line 80
    :catch_ab
    :cond_ab
    throw p1

    :cond_ac
    if-nez v4, :cond_b1

    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b1
    :goto_b1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_20

    :cond_b5
    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 22
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vivo/push/util/j;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 9

    .line 22
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 1096
    invoke-super {p0, v1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string p1, "ImageDownTask"

    const-string v0, "onPostExecute"

    .line 1097
    invoke-static {p1, v0}, Lcom/vivo/push/util/n;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object p1, p0, Lcom/vivo/push/util/j;->b:Lcom/vivo/push/model/InsideNotificationItem;

    if-eqz p1, :cond_29

    .line 1099
    invoke-static {}, Lcom/vivo/push/util/v;->b()Lcom/vivo/push/util/v;

    move-result-object p1

    iget-wide v2, p0, Lcom/vivo/push/util/j;->c:J

    const-string v0, "com.vivo.push.notify_key"

    invoke-virtual {p1, v0, v2, v3}, Lcom/vivo/push/util/v;->a(Ljava/lang/String;J)V

    .line 1100
    iget-object v0, p0, Lcom/vivo/push/util/j;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/push/util/j;->b:Lcom/vivo/push/model/InsideNotificationItem;

    iget-wide v3, p0, Lcom/vivo/push/util/j;->c:J

    iget v5, p0, Lcom/vivo/push/util/j;->e:I

    iget-object v6, p0, Lcom/vivo/push/util/j;->f:Lcom/vivo/push/c/l$a;

    invoke-static/range {v0 .. v6}, Lcom/vivo/push/util/NotifyAdapterUtil;->pushNotification(Landroid/content/Context;Ljava/util/List;Lcom/vivo/push/model/InsideNotificationItem;JILcom/vivo/push/c/l$a;)V

    :cond_29
    return-void
.end method
