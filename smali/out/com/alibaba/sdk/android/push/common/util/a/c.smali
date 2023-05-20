.class public abstract Lcom/alibaba/sdk/android/push/common/util/a/c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        "Lcom/alibaba/sdk/android/push/common/util/a/b;",
        ">;"
    }
.end annotation


# static fields
.field static a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;


# instance fields
.field public b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "MPS:SendRequestTask"

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/a/c;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "POST"

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/common/util/a/c;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/push/common/util/a/c;->e:I

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/common/util/a/c;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/sdk/android/push/common/util/a/c;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/push/common/util/a/c;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request url :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/util/a/c;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_54} :catch_55

    goto :goto_1e

    :catch_55
    :cond_55
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/common/util/a/c;->e:I

    return v0
.end method

.method protected varargs a([Ljava/util/Map;)Lcom/alibaba/sdk/android/push/common/util/a/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/sdk/android/push/common/util/a/b;"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p1, p1, v0

    sget-object v0, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/sdk/android/push/common/util/a/c;->e:I

    new-instance v0, Lcom/alibaba/sdk/android/push/common/util/a/b;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/push/common/util/a/b;-><init>(I)V

    goto :goto_30

    :cond_2b
    new-instance v0, Lcom/alibaba/sdk/android/push/common/util/a/b;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/common/util/a/b;-><init>()V

    :goto_30
    :try_start_30
    iget-object v1, p0, Lcom/alibaba/sdk/android/push/common/util/a/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/sdk/android/push/common/util/a/c;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p1}, Lcom/alibaba/sdk/android/push/common/util/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xc8

    iput v1, v0, Lcom/alibaba/sdk/android/push/common/util/a/b;->b:I

    iput-object p1, v0, Lcom/alibaba/sdk/android/push/common/util/a/b;->a:Ljava/lang/String;
    :try_end_3e
    .catch Lcom/alibaba/sdk/android/push/common/util/a/a; {:try_start_30 .. :try_end_3e} :catch_3f

    goto :goto_50

    :catch_3f
    move-exception p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/common/util/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/sdk/android/push/common/util/a/b;->b:I

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/common/util/a/a;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alibaba/sdk/android/push/common/util/a/b;->a:Ljava/lang/String;

    :goto_50
    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/sdk/android/push/common/util/a/c;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/alibaba/sdk/android/push/common/util/a/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p3, p0, Lcom/alibaba/sdk/android/push/common/util/a/c;->b:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lcom/alibaba/sdk/android/ams/common/util/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    if-eqz v1, :cond_70

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_4b

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const/16 p2, 0x400

    new-array p3, p2, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_26
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p2

    if-nez p2, :cond_39

    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v3, -0x1

    if-ne p2, v3, :cond_34

    goto :goto_39

    :cond_34
    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_26

    :cond_39
    :goto_39
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const-string/jumbo p3, "utf-8"

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_45
    .catch Lcom/alibaba/sdk/android/push/common/util/a/a; {:try_start_2 .. :try_end_45} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_45} :catch_8b
    .catchall {:try_start_2 .. :try_end_45} :catchall_89

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4a
    return-object p1

    :cond_4b
    :try_start_4b
    new-instance p1, Lcom/alibaba/sdk/android/push/common/util/a/a;

    sget-object p2, Lcom/alibaba/sdk/android/push/common/a/f;->j:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http with unsuccessful response code: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, v0, p2, p3}, Lcom/alibaba/sdk/android/push/common/util/a/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_70
    sget-object p1, Lcom/alibaba/sdk/android/push/common/util/a/c;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "failed to access VIP service."

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    new-instance p1, Lcom/alibaba/sdk/android/push/common/util/a/a;

    sget-object p2, Lcom/alibaba/sdk/android/push/common/a/f;->j:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Connection open failed."

    invoke-direct {p1, v0, p2, p3}, Lcom/alibaba/sdk/android/push/common/util/a/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_89
    .catch Lcom/alibaba/sdk/android/push/common/util/a/a; {:try_start_4b .. :try_end_89} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_89} :catch_8b
    .catchall {:try_start_4b .. :try_end_89} :catchall_89

    :catchall_89
    move-exception p1

    goto :goto_be

    :catch_8b
    move-exception p1

    :try_start_8c
    instance-of p2, p1, Ljava/net/ConnectException;
    :try_end_8e
    .catchall {:try_start_8c .. :try_end_8e} :catchall_89

    const-string p3, "VIP API failed! error: "

    if-eqz p2, :cond_98

    :try_start_92
    sget-object p2, Lcom/alibaba/sdk/android/push/common/util/a/c;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    :goto_94
    invoke-virtual {p2, p3, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9b

    :cond_98
    sget-object p2, Lcom/alibaba/sdk/android/push/common/util/a/c;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    goto :goto_94

    :goto_9b
    new-instance p2, Lcom/alibaba/sdk/android/push/common/util/a/a;

    sget-object p3, Lcom/alibaba/sdk/android/push/common/a/f;->j:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VIP API failed, error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p3, p1}, Lcom/alibaba/sdk/android/push/common/util/a/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p2

    :catch_bc
    move-exception p1

    throw p1
    :try_end_be
    .catchall {:try_start_92 .. :try_end_be} :catchall_89

    :goto_be
    if-eqz v1, :cond_c3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c3
    throw p1
.end method

.method protected abstract a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected a(Lcom/alibaba/sdk/android/push/common/util/a/b;)V
    .registers 5

    sget-object v0, Lcom/alibaba/sdk/android/push/common/util/a/c;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP Return code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/alibaba/sdk/android/push/common/util/a/b;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/push/common/util/a/c;->a([Ljava/util/Map;)Lcom/alibaba/sdk/android/push/common/util/a/b;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/alibaba/sdk/android/push/common/util/a/b;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/push/common/util/a/c;->a(Lcom/alibaba/sdk/android/push/common/util/a/b;)V

    return-void
.end method
