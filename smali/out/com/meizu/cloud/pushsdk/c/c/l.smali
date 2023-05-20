.class public abstract Lcom/meizu/cloud/pushsdk/c/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/meizu/cloud/pushsdk/c/g/d;
.end method

.method public final b()Ljava/io/InputStream;
    .registers 2

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/c/l;->a()Lcom/meizu/cloud/pushsdk/c/g/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/c/g/d;->d()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 2

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/c/l;->a()Lcom/meizu/cloud/pushsdk/c/g/d;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/c/c/m;->a(Ljava/io/Closeable;)V

    return-void
.end method
