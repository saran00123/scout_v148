.class Lcom/taobao/accs/client/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/client/GlobalClientInfo;


# direct methods
.method constructor <init>(Lcom/taobao/accs/client/GlobalClientInfo;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/taobao/accs/client/d;->a:Lcom/taobao/accs/client/GlobalClientInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 77
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->b:Ljava/lang/String;

    return-void
.end method
