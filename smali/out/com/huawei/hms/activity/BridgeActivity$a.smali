.class public Lcom/huawei/hms/activity/BridgeActivity$a;
.super Ljava/lang/Object;
.source "BridgeActivity.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/activity/BridgeActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/activity/BridgeActivity;Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/huawei/hms/activity/BridgeActivity$a;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 10

    const-string v0, "BridgeActivity"

    const-string v1, "com.huawei.android.view.WindowManagerEx$LayoutParamsEx"

    .line 1
    :try_start_4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_8} :catch_51
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_8} :catch_4f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_8} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_8} :catch_4b

    const-string v2, "getDisplaySideRegion"

    const/4 v3, 0x1

    .line 2
    :try_start_b
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/WindowInsets;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_27

    const-string v1, "sideRegion is null"

    .line 6
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_26} :catch_51
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_26} :catch_4f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_26} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_26} :catch_4b

    goto :goto_6a

    :cond_27
    const-string v2, "com.huawei.android.view.DisplaySideRegionEx"

    .line 8
    :try_start_29
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_2d} :catch_51
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_2d} :catch_4f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_29 .. :try_end_2d} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_2d} :catch_4b

    const-string v3, "getSafeInsets"

    .line 9
    :try_start_2f
    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 10
    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 11
    iget-object v2, p0, Lcom/huawei/hms/activity/BridgeActivity$a;->a:Landroid/view/ViewGroup;

    if-eqz v2, :cond_6a

    .line 12
    iget-object v2, p0, Lcom/huawei/hms/activity/BridgeActivity$a;->a:Landroid/view/ViewGroup;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v6, v1, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V
    :try_end_4a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_4a} :catch_51
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_4a} :catch_4f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2f .. :try_end_4a} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_4a} :catch_4b

    goto :goto_6a

    :catch_4b
    move-exception v1

    goto :goto_52

    :catch_4d
    move-exception v1

    goto :goto_52

    :catch_4f
    move-exception v1

    goto :goto_52

    :catch_51
    move-exception v1

    .line 16
    :goto_52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An exception occurred while reading: onApplyWindowInsets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_6a
    :goto_6a
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
