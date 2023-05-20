.class public Lcom/meizu/cloud/pushsdk/d/f/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "a"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    sget-object v2, Lcom/meizu/cloud/pushsdk/d/f/a;->a:Ljava/lang/String;

    const-string v3, "Attempting to retrieve map from: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-static {v2, v3, v4}, Lcom/meizu/cloud/pushsdk/d/f/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V

    sget-object p1, Lcom/meizu/cloud/pushsdk/d/f/a;->a:Ljava/lang/String;

    const-string v2, " + Retrieved map from file: %s"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-static {p1, v2, v3}, Lcom/meizu/cloud/pushsdk/d/f/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2a} :catch_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2a} :catch_2b

    return-object p0

    :catch_2b
    move-exception p0

    goto :goto_2e

    :catch_2d
    move-exception p0

    :goto_2e
    sget-object p1, Lcom/meizu/cloud/pushsdk/d/f/a;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, " + Exception getting vars map: %s"

    invoke-static {p1, p0, v1}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    sget-object v2, Lcom/meizu/cloud/pushsdk/d/f/a;->a:Ljava/lang/String;

    const-string v3, "Attempting to save: %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/meizu/cloud/pushsdk/d/f/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p2

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    sget-object p1, Lcom/meizu/cloud/pushsdk/d/f/a;->a:Ljava/lang/String;

    const-string p2, " + Successfully saved KV Pairs to: %s"

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {p1, p2, v2}, Lcom/meizu/cloud/pushsdk/d/f/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_27} :catch_28

    return v0

    :catch_28
    move-exception p0

    sget-object p1, Lcom/meizu/cloud/pushsdk/d/f/a;->a:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, " + Exception saving vars map: %s"

    invoke-static {p1, p0, p2}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method
