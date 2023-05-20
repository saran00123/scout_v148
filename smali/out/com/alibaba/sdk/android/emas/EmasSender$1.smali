.class Lcom/alibaba/sdk/android/emas/EmasSender$1;
.super Ljava/lang/Object;
.source "EmasSender.java"

# interfaces
.implements Lcom/alibaba/sdk/android/emas/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/emas/EmasSender;-><init>(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/emas/EmasSender;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/emas/EmasSender;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$1;->a:Lcom/alibaba/sdk/android/emas/EmasSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$1;->a:Lcom/alibaba/sdk/android/emas/EmasSender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/emas/EmasSender;->access$1902(Lcom/alibaba/sdk/android/emas/EmasSender;Z)Z

    return-void
.end method

.method public c()V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$1;->a:Lcom/alibaba/sdk/android/emas/EmasSender;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/emas/EmasSender;->access$1902(Lcom/alibaba/sdk/android/emas/EmasSender;Z)Z

    .line 51
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$1;->a:Lcom/alibaba/sdk/android/emas/EmasSender;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/EmasSender;->access$2000(Lcom/alibaba/sdk/android/emas/EmasSender;)Lcom/alibaba/sdk/android/emas/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/a;->flush()V

    return-void
.end method
