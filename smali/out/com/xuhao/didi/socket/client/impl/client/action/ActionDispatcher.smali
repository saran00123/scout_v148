.class public Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;
.super Ljava/lang/Object;
.source "ActionDispatcher.java"

# interfaces
.implements Lcom/xuhao/didi/socket/common/interfaces/common_interfacies/dispatcher/IRegister;
.implements Lcom/xuhao/didi/core/iocore/interfaces/IStateSender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionRunnable;,
        Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;,
        Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$DispatchThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xuhao/didi/socket/common/interfaces/common_interfacies/dispatcher/IRegister<",
        "Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;",
        "Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;",
        ">;",
        "Lcom/xuhao/didi/core/iocore/interfaces/IStateSender;"
    }
.end annotation


# static fields
.field private static final ACTION_QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;",
            ">;"
        }
    .end annotation
.end field

.field private static final HANDLE_THREAD:Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$DispatchThread;


# instance fields
.field private volatile mConnectionInfo:Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

.field private volatile mResponseHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$DispatchThread;

    invoke-direct {v0}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$DispatchThread;-><init>()V

    sput-object v0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->HANDLE_THREAD:Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$DispatchThread;

    .line 48
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->ACTION_QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 52
    sget-object v0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->HANDLE_THREAD:Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$DispatchThread;

    invoke-virtual {v0}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$DispatchThread;->start()V

    return-void
.end method

.method public constructor <init>(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;)V
    .registers 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mResponseHandlerList:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 74
    iput-object p2, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    .line 75
    iput-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mConnectionInfo:Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 1

    .line 39
    sget-object v0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->ACTION_QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;)Ljava/util/List;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mResponseHandlerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;Ljava/lang/String;Ljava/io/Serializable;Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->dispatchActionToListener(Ljava/lang/String;Ljava/io/Serializable;Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;)V

    return-void
.end method

.method private dispatchActionToListener(Ljava/lang/String;Ljava/io/Serializable;Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;)V
    .registers 5

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_d6

    goto/16 :goto_6f

    :sswitch_9
    const-string v0, "action_write_complete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x6

    goto :goto_70

    :sswitch_13
    const-string v0, "action_pulse_request"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/16 v0, 0x9

    goto :goto_70

    :sswitch_1e
    const-string v0, "action_write_thread_shutdown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x7

    goto :goto_70

    :sswitch_28
    const-string v0, "action_read_thread_shutdown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/16 v0, 0x8

    goto :goto_70

    :sswitch_33
    const-string v0, "action_connection_success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x0

    goto :goto_70

    :sswitch_3d
    const-string v0, "action_write_thread_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x5

    goto :goto_70

    :sswitch_47
    const-string v0, "action_disconnection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x2

    goto :goto_70

    :sswitch_51
    const-string v0, "action_connection_failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x1

    goto :goto_70

    :sswitch_5b
    const-string v0, "action_read_thread_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x4

    goto :goto_70

    :sswitch_65
    const-string v0, "action_read_complete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x3

    goto :goto_70

    :cond_6f
    :goto_6f
    const/4 v0, -0x1

    :goto_70
    packed-switch v0, :pswitch_data_100

    goto/16 :goto_d4

    .line 192
    :pswitch_75
    :try_start_75
    check-cast p2, Lcom/xuhao/didi/core/iocore/interfaces/IPulseSendable;

    .line 193
    iget-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mConnectionInfo:Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    invoke-interface {p3, p1, p2}, Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;->onPulseSend(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Lcom/xuhao/didi/core/iocore/interfaces/IPulseSendable;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7c} :catch_7d

    goto :goto_d4

    :catch_7d
    move-exception p1

    .line 195
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d4

    .line 183
    :pswitch_82
    :try_start_82
    check-cast p2, Ljava/lang/Exception;

    .line 184
    invoke-interface {p3, p1, p2}, Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;->onSocketIOThreadShutdown(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_87} :catch_88

    goto :goto_d4

    :catch_88
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d4

    .line 173
    :pswitch_8d
    :try_start_8d
    check-cast p2, Lcom/xuhao/didi/core/iocore/interfaces/ISendable;

    .line 174
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mConnectionInfo:Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    invoke-interface {p3, v0, p1, p2}, Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;->onSocketWriteResponse(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;Lcom/xuhao/didi/core/iocore/interfaces/ISendable;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_94} :catch_95

    goto :goto_d4

    :catch_95
    move-exception p1

    .line 176
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d4

    .line 165
    :pswitch_9a
    :try_start_9a
    invoke-interface {p3, p1}, Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;->onSocketIOThreadStart(Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_d4

    :catch_9e
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d4

    .line 155
    :pswitch_a3
    :try_start_a3
    check-cast p2, Lcom/xuhao/didi/core/pojo/OriginalData;

    .line 156
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mConnectionInfo:Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    invoke-interface {p3, v0, p1, p2}, Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;->onSocketReadResponse(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;Lcom/xuhao/didi/core/pojo/OriginalData;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_aa} :catch_ab

    goto :goto_d4

    :catch_ab
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d4

    .line 146
    :pswitch_b0
    :try_start_b0
    check-cast p2, Ljava/lang/Exception;

    .line 147
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mConnectionInfo:Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    invoke-interface {p3, v0, p1, p2}, Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;->onSocketDisconnection(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b7} :catch_b8

    goto :goto_d4

    :catch_b8
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d4

    .line 137
    :pswitch_bd
    :try_start_bd
    check-cast p2, Ljava/lang/Exception;

    .line 138
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mConnectionInfo:Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    invoke-interface {p3, v0, p1, p2}, Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;->onSocketConnectionFailed(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c4} :catch_c5

    goto :goto_d4

    :catch_c5
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d4

    .line 129
    :pswitch_ca
    :try_start_ca
    iget-object p2, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mConnectionInfo:Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    invoke-interface {p3, p2, p1}, Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;->onSocketConnectionSuccess(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cf} :catch_d0

    goto :goto_d4

    :catch_d0
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d4
    return-void

    nop

    :sswitch_data_d6
    .sparse-switch
        -0x56bd5487 -> :sswitch_65
        -0x4ec59fd3 -> :sswitch_5b
        -0x4a433d0b -> :sswitch_51
        -0x47a29c5d -> :sswitch_47
        -0x42d5a50a -> :sswitch_3d
        -0x2cab17b5 -> :sswitch_33
        -0x20552d55 -> :sswitch_28
        0xb5bf742 -> :sswitch_1e
        0x68ac45a0 -> :sswitch_13
        0x7fe972c2 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_ca
        :pswitch_bd
        :pswitch_b0
        :pswitch_a3
        :pswitch_9a
        :pswitch_9a
        :pswitch_8d
        :pswitch_82
        :pswitch_82
        :pswitch_75
    .end packed-switch
.end method


# virtual methods
.method public registerReceiver(Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;
    .registers 6

    if-eqz p1, :cond_2e

    .line 83
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mResponseHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 85
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mResponseHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_1b} :catch_1e
    .catchall {:try_start_2 .. :try_end_1b} :catchall_1c

    goto :goto_22

    :catchall_1c
    move-exception p1

    goto :goto_28

    :catch_1e
    move-exception p1

    .line 91
    :try_start_1f
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1c

    .line 93
    :cond_22
    :goto_22
    iget-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2e

    :goto_28
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 94
    throw p1

    .line 96
    :cond_2e
    :goto_2e
    iget-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    return-object p1
.end method

.method public bridge synthetic registerReceiver(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 39
    check-cast p1, Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;

    invoke-virtual {p0, p1}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->registerReceiver(Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    move-result-object p1

    return-object p1
.end method

.method public sendBroadcast(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, p1, v0}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->sendBroadcast(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public sendBroadcast(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 7

    .line 204
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    invoke-interface {v0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->getOption()Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 208
    :cond_9
    invoke-virtual {v0}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;->getCallbackThreadModeToken()Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$ThreadModeToken;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 210
    new-instance v0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;

    invoke-direct {v0, p1, p2, p0}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;-><init>(Ljava/lang/String;Ljava/io/Serializable;Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;)V

    .line 211
    new-instance p1, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionRunnable;

    invoke-direct {p1, v0}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionRunnable;-><init>(Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;)V

    .line 213
    :try_start_19
    invoke-virtual {v1, p1}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$ThreadModeToken;->handleCallbackEvent(Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionRunnable;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_8b

    :catch_1d
    move-exception p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8b

    .line 217
    :cond_22
    invoke-virtual {v0}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;->isCallbackInIndependentThread()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 218
    new-instance v0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;

    invoke-direct {v0, p1, p2, p0}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;-><init>(Ljava/lang/String;Ljava/io/Serializable;Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;)V

    .line 219
    sget-object p1, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->ACTION_QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 220
    :cond_33
    invoke-virtual {v0}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;->isCallbackInIndependentThread()Z

    move-result v0

    if-nez v0, :cond_72

    .line 223
    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mResponseHandlerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 225
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 226
    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 227
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;

    .line 228
    invoke-direct {p0, p1, p2, v1}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->dispatchActionToListener(Ljava/lang/String;Ljava/io/Serializable;Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;)V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_5f} :catch_62
    .catchall {:try_start_39 .. :try_end_5f} :catchall_60

    goto :goto_50

    :catchall_60
    move-exception p1

    goto :goto_6c

    :catch_62
    move-exception p1

    .line 234
    :try_start_63
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_60

    .line 236
    :cond_66
    iget-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_8b

    :goto_6c
    iget-object p2, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 237
    throw p1

    .line 239
    :cond_72
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ActionDispatcher error action:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not dispatch"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xuhao/didi/core/utils/SLog;->e(Ljava/lang/String;)V

    :goto_8b
    return-void
.end method

.method public setConnectionInfo(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mConnectionInfo:Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    return-void
.end method

.method public unRegisterReceiver(Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;
    .registers 6

    if-eqz p1, :cond_26

    .line 104
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mResponseHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_13} :catch_16
    .catchall {:try_start_2 .. :try_end_13} :catchall_14

    goto :goto_1a

    :catchall_14
    move-exception p1

    goto :goto_20

    :catch_16
    move-exception p1

    .line 110
    :try_start_17
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_14

    .line 112
    :goto_1a
    iget-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_26

    :goto_20
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 113
    throw p1

    .line 115
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    return-object p1
.end method

.method public bridge synthetic unRegisterReceiver(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 39
    check-cast p1, Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;

    invoke-virtual {p0, p1}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->unRegisterReceiver(Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    move-result-object p1

    return-object p1
.end method
