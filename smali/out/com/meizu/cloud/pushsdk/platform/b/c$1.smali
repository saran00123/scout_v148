.class Lcom/meizu/cloud/pushsdk/platform/b/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/cloud/pushsdk/platform/b/c;->m()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/cloud/pushsdk/platform/b/c;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/platform/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/b/c$1;->a:Lcom/meizu/cloud/pushsdk/platform/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/b/c$1;->a:Lcom/meizu/cloud/pushsdk/platform/b/c;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/b/c;->n()Z

    return-void
.end method
