.class Lorg/android/agoo/control/j;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lorg/android/agoo/control/BaseIntentService;


# direct methods
.method constructor <init>(Lorg/android/agoo/control/BaseIntentService;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lorg/android/agoo/control/j;->a:Lorg/android/agoo/control/BaseIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
