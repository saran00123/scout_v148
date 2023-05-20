.class Lcom/taobao/accs/base/BaseService$4;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/base/BaseService;


# direct methods
.method constructor <init>(Lcom/taobao/accs/base/BaseService;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/taobao/accs/base/BaseService$4;->this$0:Lcom/taobao/accs/base/BaseService;

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
