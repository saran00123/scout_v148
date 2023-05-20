.class Lorg/android/agoo/control/k;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/android/agoo/control/BaseIntentService;


# direct methods
.method constructor <init>(Lorg/android/agoo/control/BaseIntentService;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lorg/android/agoo/control/k;->a:Lorg/android/agoo/control/BaseIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 100
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 101
    iget-object v0, p0, Lorg/android/agoo/control/k;->a:Lorg/android/agoo/control/BaseIntentService;

    invoke-virtual {v0}, Lorg/android/agoo/control/BaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/android/agoo/control/AgooFactory;->getInstance(Landroid/content/Context;)Lorg/android/agoo/control/AgooFactory;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/control/BaseIntentService;->access$002(Lorg/android/agoo/control/BaseIntentService;Lorg/android/agoo/control/AgooFactory;)Lorg/android/agoo/control/AgooFactory;

    .line 102
    iget-object v0, p0, Lorg/android/agoo/control/k;->a:Lorg/android/agoo/control/BaseIntentService;

    invoke-static {v0}, Lorg/android/agoo/control/BaseIntentService;->access$000(Lorg/android/agoo/control/BaseIntentService;)Lorg/android/agoo/control/AgooFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/android/agoo/control/AgooFactory;->getNotifyManager()Lorg/android/agoo/control/NotifManager;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/control/BaseIntentService;->access$102(Lorg/android/agoo/control/BaseIntentService;Lorg/android/agoo/control/NotifManager;)Lorg/android/agoo/control/NotifManager;

    .line 103
    iget-object v0, p0, Lorg/android/agoo/control/k;->a:Lorg/android/agoo/control/BaseIntentService;

    invoke-static {v0}, Lorg/android/agoo/control/BaseIntentService;->access$000(Lorg/android/agoo/control/BaseIntentService;)Lorg/android/agoo/control/AgooFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/android/agoo/control/AgooFactory;->getMessageService()Lorg/android/agoo/message/MessageService;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/control/BaseIntentService;->access$202(Lorg/android/agoo/control/BaseIntentService;Lorg/android/agoo/message/MessageService;)Lorg/android/agoo/message/MessageService;

    return-void
.end method
