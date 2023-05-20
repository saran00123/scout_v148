.class Lorg/android/agoo/control/i;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lorg/android/agoo/control/h;


# direct methods
.method constructor <init>(Lorg/android/agoo/control/h;Landroid/content/Intent;)V
    .registers 3

    .line 65
    iput-object p1, p0, Lorg/android/agoo/control/i;->b:Lorg/android/agoo/control/h;

    iput-object p2, p0, Lorg/android/agoo/control/i;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 68
    iget-object v0, p0, Lorg/android/agoo/control/i;->b:Lorg/android/agoo/control/h;

    iget-object v0, v0, Lorg/android/agoo/control/h;->a:Lorg/android/agoo/control/BaseIntentService;

    iget-object v1, p0, Lorg/android/agoo/control/i;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lorg/android/agoo/control/BaseIntentService;->onHandleIntent(Landroid/content/Intent;)V

    return-void
.end method
