.class final Lcom/vivo/push/sdk/a$1;
.super Ljava/lang/Object;
.source "CommandWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/push/sdk/a;->b(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Method;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:[Ljava/lang/Object;

.field final synthetic d:Lcom/vivo/push/sdk/a;


# direct methods
.method constructor <init>(Lcom/vivo/push/sdk/a;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 5

    .line 110
    iput-object p1, p0, Lcom/vivo/push/sdk/a$1;->d:Lcom/vivo/push/sdk/a;

    iput-object p2, p0, Lcom/vivo/push/sdk/a$1;->a:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/vivo/push/sdk/a$1;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/vivo/push/sdk/a$1;->c:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/vivo/push/sdk/a$1;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/vivo/push/sdk/a$1;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/vivo/push/sdk/a$1;->c:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    const-string v1, "CommandWorker"

    const-string v2, "reflect e: "

    .line 116
    invoke-static {v1, v2, v0}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
