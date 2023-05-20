.class final Lcom/alibaba/sdk/android/sender/AlicloudSender$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/sender/AlicloudSender;->b(Landroid/content/Context;Lcom/alibaba/sdk/android/sender/SdkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/sdk/android/sender/SdkInfo;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/alibaba/sdk/android/sender/SdkInfo;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/alibaba/sdk/android/sender/AlicloudSender$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/sdk/android/sender/AlicloudSender$2;->b:Lcom/alibaba/sdk/android/sender/SdkInfo;

    iput-object p3, p0, Lcom/alibaba/sdk/android/sender/AlicloudSender$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/alibaba/sdk/android/sender/AlicloudSender$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/sdk/android/sender/AlicloudSender$2;->b:Lcom/alibaba/sdk/android/sender/SdkInfo;

    iget-object v2, p0, Lcom/alibaba/sdk/android/sender/AlicloudSender$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/sdk/android/sender/AlicloudSender;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/sender/SdkInfo;Ljava/lang/String;)V

    return-void
.end method
