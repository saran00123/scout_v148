.class final Lcom/alibaba/sdk/android/push/register/OppoRegister$1;
.super Ljava/lang/Object;
.source "OppoRegister.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/register/OppoRegister;->registerAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$appSecret:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 37
    iput-object p1, p0, Lcom/alibaba/sdk/android/push/register/OppoRegister$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/sdk/android/push/register/OppoRegister$1;->val$appKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/push/register/OppoRegister$1;->val$appSecret:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/register/OppoRegister$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/sdk/android/push/register/OppoRegister$1;->val$appKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/push/register/OppoRegister$1;->val$appSecret:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/sdk/android/push/register/OppoRegister;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
