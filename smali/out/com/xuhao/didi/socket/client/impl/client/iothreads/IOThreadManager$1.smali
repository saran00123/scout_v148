.class synthetic Lcom/xuhao/didi/socket/client/impl/client/iothreads/IOThreadManager$1;
.super Ljava/lang/Object;
.source "IOThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xuhao/didi/socket/client/impl/client/iothreads/IOThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xuhao$didi$socket$client$sdk$client$OkSocketOptions$IOThreadMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 71
    invoke-static {}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$IOThreadMode;->values()[Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$IOThreadMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/IOThreadManager$1;->$SwitchMap$com$xuhao$didi$socket$client$sdk$client$OkSocketOptions$IOThreadMode:[I

    :try_start_9
    sget-object v0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/IOThreadManager$1;->$SwitchMap$com$xuhao$didi$socket$client$sdk$client$OkSocketOptions$IOThreadMode:[I

    sget-object v1, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$IOThreadMode;->DUPLEX:Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$IOThreadMode;

    invoke-virtual {v1}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$IOThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/IOThreadManager$1;->$SwitchMap$com$xuhao$didi$socket$client$sdk$client$OkSocketOptions$IOThreadMode:[I

    sget-object v1, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$IOThreadMode;->SIMPLEX:Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$IOThreadMode;

    invoke-virtual {v1}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$IOThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
