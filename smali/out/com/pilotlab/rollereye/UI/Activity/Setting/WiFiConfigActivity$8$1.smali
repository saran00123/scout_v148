.class Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8$1;
.super Ljava/lang/Object;
.source "WiFiConfigActivity.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableSource<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8;)V
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 434
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)I

    move-result p1

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_57

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$1200(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long p1, v0, v2

    if-lez p1, :cond_21

    goto :goto_57

    .line 441
    :cond_21
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "repeat when :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8;

    iget-object v1, v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 442
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 435
    :cond_57
    :goto_57
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Time OUT"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "Time Out"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 429
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8$1;->apply(Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
