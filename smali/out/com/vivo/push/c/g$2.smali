.class final Lcom/vivo/push/c/g$2;
.super Ljava/lang/Object;
.source "OnDelTagsReceiveTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/push/c/g;->a(Lcom/vivo/push/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/vivo/push/c/g;


# direct methods
.method constructor <init>(Lcom/vivo/push/c/g;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 6

    .line 75
    iput-object p1, p0, Lcom/vivo/push/c/g$2;->e:Lcom/vivo/push/c/g;

    iput p2, p0, Lcom/vivo/push/c/g$2;->a:I

    iput-object p3, p0, Lcom/vivo/push/c/g$2;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/vivo/push/c/g$2;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/vivo/push/c/g$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 79
    iget-object v0, p0, Lcom/vivo/push/c/g$2;->e:Lcom/vivo/push/c/g;

    iget-object v1, v0, Lcom/vivo/push/c/g;->c:Lcom/vivo/push/sdk/PushMessageCallback;

    iget-object v0, p0, Lcom/vivo/push/c/g$2;->e:Lcom/vivo/push/c/g;

    invoke-static {v0}, Lcom/vivo/push/c/g;->b(Lcom/vivo/push/c/g;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/vivo/push/c/g$2;->a:I

    iget-object v4, p0, Lcom/vivo/push/c/g$2;->b:Ljava/util/List;

    iget-object v5, p0, Lcom/vivo/push/c/g$2;->c:Ljava/util/List;

    iget-object v6, p0, Lcom/vivo/push/c/g$2;->d:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/vivo/push/sdk/PushMessageCallback;->onDelAlias(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
