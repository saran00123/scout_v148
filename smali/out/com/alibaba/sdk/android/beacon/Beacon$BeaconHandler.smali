.class final Lcom/alibaba/sdk/android/beacon/Beacon$BeaconHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/beacon/Beacon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BeaconHandler"
.end annotation


# static fields
.field static final MSG_ADD_ERR_LISTENER:I = 0x6

.field static final MSG_ADD_UPDATE_LISTENER:I = 0x4

.field static final MSG_ERR_CALLBACK:I = 0x7

.field static final MSG_REMOVE_UPDATE_LISTENER:I = 0x5

.field static final MSG_START:I = 0x0

.field static final MSG_START_POLLING:I = 0x2

.field static final MSG_STOP_POLLING:I = 0x3

.field static final MSG_UPDATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/alibaba/sdk/android/beacon/Beacon;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/beacon/Beacon;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/alibaba/sdk/android/beacon/Beacon$BeaconHandler;->this$0:Lcom/alibaba/sdk/android/beacon/Beacon;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :try_start_3
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_60

    goto :goto_5f

    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/sdk/android/beacon/Beacon$Error;

    iget-object v0, p0, Lcom/alibaba/sdk/android/beacon/Beacon$BeaconHandler;->this$0:Lcom/alibaba/sdk/android/beacon/Beacon;

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/beacon/Beacon;->a(Lcom/alibaba/sdk/android/beacon/Beacon;Lcom/alibaba/sdk/android/beacon/Beacon$Error;)V

    goto :goto_5f

    :pswitch_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/sdk/android/beacon/Beacon$OnServiceErrListener;

    iget-object v0, p0, Lcom/alibaba/sdk/android/beacon/Beacon$BeaconHandler;->this$0:Lcom/alibaba/sdk/android/beacon/Beacon;

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/beacon/Beacon;->a(Lcom/alibaba/sdk/android/beacon/Beacon;Lcom/alibaba/sdk/android/beacon/Beacon$OnServiceErrListener;)V

    goto :goto_5f

    :pswitch_1d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;

    iget-object v0, p0, Lcom/alibaba/sdk/android/beacon/Beacon$BeaconHandler;->this$0:Lcom/alibaba/sdk/android/beacon/Beacon;

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/beacon/Beacon;->b(Lcom/alibaba/sdk/android/beacon/Beacon;Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;)V

    goto :goto_5f

    :pswitch_27
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;

    iget-object v0, p0, Lcom/alibaba/sdk/android/beacon/Beacon$BeaconHandler;->this$0:Lcom/alibaba/sdk/android/beacon/Beacon;

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/beacon/Beacon;->a(Lcom/alibaba/sdk/android/beacon/Beacon;Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;)V

    goto :goto_5f

    :pswitch_31
    iget-object p1, p0, Lcom/alibaba/sdk/android/beacon/Beacon$BeaconHandler;->this$0:Lcom/alibaba/sdk/android/beacon/Beacon;

    invoke-static {p1}, Lcom/alibaba/sdk/android/beacon/Beacon;->a(Lcom/alibaba/sdk/android/beacon/Beacon;)V

    goto :goto_5f

    :pswitch_37
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/sdk/android/beacon/Beacon$BeaconHandler;->this$0:Lcom/alibaba/sdk/android/beacon/Beacon;

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/beacon/Beacon;->c(Lcom/alibaba/sdk/android/beacon/Beacon;Landroid/content/Context;)V

    goto :goto_5f

    :pswitch_41
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/sdk/android/beacon/Beacon$BeaconHandler;->this$0:Lcom/alibaba/sdk/android/beacon/Beacon;

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/beacon/Beacon;->b(Lcom/alibaba/sdk/android/beacon/Beacon;Landroid/content/Context;)V

    goto :goto_5f

    :pswitch_4b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/sdk/android/beacon/Beacon$BeaconHandler;->this$0:Lcom/alibaba/sdk/android/beacon/Beacon;

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/beacon/Beacon;->a(Lcom/alibaba/sdk/android/beacon/Beacon;Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_54} :catch_55

    goto :goto_5f

    :catch_55
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "beacon"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5f
    return-void

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_41
        :pswitch_37
        :pswitch_31
        :pswitch_27
        :pswitch_1d
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method
