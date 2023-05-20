.class public final Lcom/vivo/push/c;
.super Ljava/lang/Object;
.source "PushClientFactory.java"

# interfaces
.implements Lcom/vivo/push/IPushClientFactory;


# instance fields
.field private a:Lcom/vivo/push/c/s;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/vivo/push/c/s;

    invoke-direct {v0}, Lcom/vivo/push/c/s;-><init>()V

    iput-object v0, p0, Lcom/vivo/push/c;->a:Lcom/vivo/push/c/s;

    return-void
.end method


# virtual methods
.method public final createReceiveTask(Lcom/vivo/push/g;)Lcom/vivo/push/c/o;
    .registers 4

    .line 4035
    iget v0, p1, Lcom/vivo/push/g;->a:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_58

    const/16 v1, 0x7e0

    if-eq v0, v1, :cond_52

    packed-switch v0, :pswitch_data_5e

    const/4 p1, 0x0

    move-object v0, p1

    goto :goto_5d

    .line 3124
    :pswitch_10
    new-instance v0, Lcom/vivo/push/c/q;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/q;-><init>(Lcom/vivo/push/g;)V

    goto :goto_5d

    .line 3121
    :pswitch_16
    new-instance v0, Lcom/vivo/push/c/d;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/d;-><init>(Lcom/vivo/push/g;)V

    goto :goto_5d

    .line 3118
    :pswitch_1c
    new-instance v0, Lcom/vivo/push/c/f;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/f;-><init>(Lcom/vivo/push/g;)V

    goto :goto_5d

    .line 3112
    :pswitch_22
    new-instance v0, Lcom/vivo/push/c/i;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/i;-><init>(Lcom/vivo/push/g;)V

    goto :goto_5d

    .line 3109
    :pswitch_28
    new-instance v0, Lcom/vivo/push/c/j;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/j;-><init>(Lcom/vivo/push/g;)V

    goto :goto_5d

    .line 3106
    :pswitch_2e
    new-instance v0, Lcom/vivo/push/c/n;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/n;-><init>(Lcom/vivo/push/g;)V

    goto :goto_5d

    .line 3115
    :pswitch_34
    new-instance v0, Lcom/vivo/push/c/m;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/m;-><init>(Lcom/vivo/push/g;)V

    goto :goto_5d

    .line 3103
    :pswitch_3a
    new-instance v0, Lcom/vivo/push/c/l;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/l;-><init>(Lcom/vivo/push/g;)V

    goto :goto_5d

    .line 3100
    :pswitch_40
    new-instance v0, Lcom/vivo/push/c/k;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/k;-><init>(Lcom/vivo/push/g;)V

    goto :goto_5d

    .line 3097
    :pswitch_46
    new-instance v0, Lcom/vivo/push/c/g;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/g;-><init>(Lcom/vivo/push/g;)V

    goto :goto_5d

    .line 3094
    :pswitch_4c
    new-instance v0, Lcom/vivo/push/c/p;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/p;-><init>(Lcom/vivo/push/g;)V

    goto :goto_5d

    .line 3130
    :cond_52
    new-instance v0, Lcom/vivo/push/c/h;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/h;-><init>(Lcom/vivo/push/g;)V

    goto :goto_5d

    .line 3127
    :cond_58
    new-instance v0, Lcom/vivo/push/c/r;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/r;-><init>(Lcom/vivo/push/g;)V

    :goto_5d
    return-object v0

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_46
        :pswitch_40
        :pswitch_3a
        :pswitch_34
        :pswitch_2e
        :pswitch_28
        :pswitch_22
        :pswitch_1c
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method

.method public final createReceiverCommand(Landroid/content/Intent;)Lcom/vivo/push/g;
    .registers 5

    const/4 v0, -0x1

    const-string v1, "command"

    .line 32
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_f

    const-string v1, "method"

    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :cond_f
    const/16 v0, 0x14

    if-eq v1, v0, :cond_5e

    const/16 v0, 0x7e0

    if-eq v1, v0, :cond_58

    packed-switch v1, :pswitch_data_8a

    const/4 v0, 0x0

    goto :goto_63

    .line 69
    :pswitch_1c
    new-instance v0, Lcom/vivo/push/b/j;

    invoke-direct {v0}, Lcom/vivo/push/b/j;-><init>()V

    goto :goto_63

    .line 66
    :pswitch_22
    new-instance v0, Lcom/vivo/push/b/i;

    invoke-direct {v0, v1}, Lcom/vivo/push/b/i;-><init>(I)V

    goto :goto_63

    .line 62
    :pswitch_28
    new-instance v0, Lcom/vivo/push/b/k;

    invoke-direct {v0}, Lcom/vivo/push/b/k;-><init>()V

    goto :goto_63

    .line 56
    :pswitch_2e
    new-instance v0, Lcom/vivo/push/b/m;

    invoke-direct {v0}, Lcom/vivo/push/b/m;-><init>()V

    goto :goto_63

    .line 53
    :pswitch_34
    new-instance v0, Lcom/vivo/push/b/n;

    invoke-direct {v0}, Lcom/vivo/push/b/n;-><init>()V

    goto :goto_63

    .line 50
    :pswitch_3a
    new-instance v0, Lcom/vivo/push/b/r;

    invoke-direct {v0}, Lcom/vivo/push/b/r;-><init>()V

    goto :goto_63

    .line 59
    :pswitch_40
    new-instance v0, Lcom/vivo/push/b/p;

    invoke-direct {v0}, Lcom/vivo/push/b/p;-><init>()V

    goto :goto_63

    .line 47
    :pswitch_46
    new-instance v0, Lcom/vivo/push/b/q;

    invoke-direct {v0}, Lcom/vivo/push/b/q;-><init>()V

    goto :goto_63

    .line 44
    :pswitch_4c
    new-instance v0, Lcom/vivo/push/b/o;

    invoke-direct {v0}, Lcom/vivo/push/b/o;-><init>()V

    goto :goto_63

    .line 41
    :pswitch_52
    new-instance v0, Lcom/vivo/push/b/t;

    invoke-direct {v0, v1}, Lcom/vivo/push/b/t;-><init>(I)V

    goto :goto_63

    .line 75
    :cond_58
    new-instance v0, Lcom/vivo/push/b/l;

    invoke-direct {v0}, Lcom/vivo/push/b/l;-><init>()V

    goto :goto_63

    .line 72
    :cond_5e
    new-instance v0, Lcom/vivo/push/b/u;

    invoke-direct {v0}, Lcom/vivo/push/b/u;-><init>()V

    :goto_63
    if-eqz v0, :cond_89

    .line 1096
    invoke-static {p1}, Lcom/vivo/push/a;->a(Landroid/content/Intent;)Lcom/vivo/push/a;

    move-result-object p1

    if-nez p1, :cond_73

    const-string p1, "PushCommand"

    const-string v1, "bundleWapper is null"

    .line 1098
    invoke-static {p1, v1}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 1178
    :cond_73
    iget-object v1, p1, Lcom/vivo/push/a;->b:Ljava/lang/String;

    .line 1106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 1107
    iput-object v1, v0, Lcom/vivo/push/g;->b:Ljava/lang/String;

    goto :goto_86

    :cond_7e
    const-string v1, "client_pkgname"

    .line 1109
    invoke-virtual {p1, v1}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vivo/push/g;->b:Ljava/lang/String;

    .line 1111
    :goto_86
    invoke-virtual {v0, p1}, Lcom/vivo/push/g;->c(Lcom/vivo/push/a;)V

    :cond_89
    :goto_89
    return-object v0

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_52
        :pswitch_52
        :pswitch_4c
        :pswitch_46
        :pswitch_40
        :pswitch_3a
        :pswitch_34
        :pswitch_2e
        :pswitch_28
        :pswitch_22
        :pswitch_22
        :pswitch_1c
    .end packed-switch
.end method

.method public final createTask(Lcom/vivo/push/g;)Lcom/vivo/push/e;
    .registers 4

    .line 3035
    iget v0, p1, Lcom/vivo/push/g;->a:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_80

    const/16 v1, 0x64

    if-eq v0, v1, :cond_7a

    const/16 v1, 0x65

    if-eq v0, v1, :cond_74

    packed-switch v0, :pswitch_data_86

    packed-switch v0, :pswitch_data_a4

    const/4 p1, 0x0

    move-object v0, p1

    goto/16 :goto_85

    .line 2035
    :pswitch_18
    new-instance v0, Lcom/vivo/push/c/u;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/u;-><init>(Lcom/vivo/push/g;)V

    goto/16 :goto_85

    .line 2032
    :pswitch_1f
    new-instance v0, Lcom/vivo/push/c/a;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/a;-><init>(Lcom/vivo/push/g;)V

    goto/16 :goto_85

    .line 2077
    :pswitch_26
    new-instance v0, Lcom/vivo/push/c/e;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/e;-><init>(Lcom/vivo/push/g;)V

    goto :goto_85

    .line 2074
    :pswitch_2c
    new-instance v0, Lcom/vivo/push/c/q;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/q;-><init>(Lcom/vivo/push/g;)V

    goto :goto_85

    .line 2071
    :pswitch_32
    new-instance v0, Lcom/vivo/push/c/d;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/d;-><init>(Lcom/vivo/push/g;)V

    goto :goto_85

    .line 2068
    :pswitch_38
    new-instance v0, Lcom/vivo/push/c/f;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/f;-><init>(Lcom/vivo/push/g;)V

    goto :goto_85

    .line 2056
    :pswitch_3e
    new-instance v0, Lcom/vivo/push/c/i;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/i;-><init>(Lcom/vivo/push/g;)V

    goto :goto_85

    .line 2053
    :pswitch_44
    new-instance v0, Lcom/vivo/push/c/j;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/j;-><init>(Lcom/vivo/push/g;)V

    goto :goto_85

    .line 2050
    :pswitch_4a
    new-instance v0, Lcom/vivo/push/c/n;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/n;-><init>(Lcom/vivo/push/g;)V

    goto :goto_85

    .line 2059
    :pswitch_50
    new-instance v0, Lcom/vivo/push/c/m;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/m;-><init>(Lcom/vivo/push/g;)V

    goto :goto_85

    .line 2047
    :pswitch_56
    new-instance v0, Lcom/vivo/push/c/l;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/l;-><init>(Lcom/vivo/push/g;)V

    goto :goto_85

    .line 2044
    :pswitch_5c
    new-instance v0, Lcom/vivo/push/c/k;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/k;-><init>(Lcom/vivo/push/g;)V

    goto :goto_85

    .line 2041
    :pswitch_62
    new-instance v0, Lcom/vivo/push/c/g;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/g;-><init>(Lcom/vivo/push/g;)V

    goto :goto_85

    .line 2038
    :pswitch_68
    new-instance v0, Lcom/vivo/push/c/p;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/p;-><init>(Lcom/vivo/push/g;)V

    goto :goto_85

    .line 2029
    :pswitch_6e
    new-instance v0, Lcom/vivo/push/c/t;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/t;-><init>(Lcom/vivo/push/g;)V

    goto :goto_85

    .line 2065
    :cond_74
    new-instance v0, Lcom/vivo/push/c/c;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/c;-><init>(Lcom/vivo/push/g;)V

    goto :goto_85

    .line 2062
    :cond_7a
    new-instance v0, Lcom/vivo/push/c/b;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/b;-><init>(Lcom/vivo/push/g;)V

    goto :goto_85

    .line 2080
    :cond_80
    new-instance v0, Lcom/vivo/push/c/r;

    invoke-direct {v0, p1}, Lcom/vivo/push/c/r;-><init>(Lcom/vivo/push/g;)V

    :goto_85
    return-object v0

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_68
        :pswitch_62
        :pswitch_5c
        :pswitch_56
        :pswitch_50
        :pswitch_4a
        :pswitch_44
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x7d0
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_1f
        :pswitch_18
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
    .end packed-switch
.end method
