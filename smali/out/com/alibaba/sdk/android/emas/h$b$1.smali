.class Lcom/alibaba/sdk/android/emas/h$b$1;
.super Ljava/lang/Object;
.source "SendManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/emas/h$b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/emas/h$b;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/emas/h$b;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/h$b$1;->a:Lcom/alibaba/sdk/android/emas/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h$b$1;->a:Lcom/alibaba/sdk/android/emas/h$b;

    iget-object v0, v0, Lcom/alibaba/sdk/android/emas/h$b;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/emas/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/h$b$1;->a:Lcom/alibaba/sdk/android/emas/h$b;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/emas/h$b;->b()Lcom/alibaba/sdk/android/emas/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/c;->a(Lcom/alibaba/sdk/android/emas/d;)V

    return-void
.end method
