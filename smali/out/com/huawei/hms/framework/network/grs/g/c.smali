.class public Lcom/huawei/hms/framework/network/grs/g/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field private c:Lcom/huawei/hms/framework/network/grs/e/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/e/a;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/g/c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/g/c;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/g/c;->c:Lcom/huawei/hms/framework/network/grs/e/a;

    return-void
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .registers 12

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/c;->c:Lcom/huawei/hms/framework/network/grs/e/a;

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/e/a;->a()Lcom/huawei/hms/framework/network/grs/e/c;

    move-result-object v0

    const-string v1, ""

    const-string v2, "geoipCountryCode"

    invoke-virtual {v0, v2, v1}, Lcom/huawei/hms/framework/network/grs/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ROOT"

    const-string v3, "geoip.countrycode"

    invoke-static {v0, v3, v2}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "geoIpCountry is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GeoipCountry"

    invoke-static {v5, v4}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/g/c;->c:Lcom/huawei/hms/framework/network/grs/e/a;

    invoke-virtual {v4}, Lcom/huawei/hms/framework/network/grs/e/a;->a()Lcom/huawei/hms/framework/network/grs/e/c;

    move-result-object v4

    const-string v6, "geoipCountryCodetime"

    const-string v7, "0"

    invoke-virtual {v4, v6, v7}, Lcom/huawei/hms/framework/network/grs/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-nez v6, :cond_55

    const-string v6, "\\d+"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_55

    :try_start_4a
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_4e} :catch_4f

    goto :goto_55

    :catch_4f
    move-exception v4

    const-string v6, "convert urlParamKey from String to Long catch NumberFormatException."

    invoke-static {v5, v6, v4}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_55
    :goto_55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_65

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hms/framework/network/grs/h/e;->a(Ljava/lang/Long;)Z

    move-result v4

    if-eqz v4, :cond_d3

    :cond_65
    new-instance v4, Lcom/huawei/hms/framework/network/grs/g/l/c;

    iget-object v6, p0, Lcom/huawei/hms/framework/network/grs/g/c;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v7, p0, Lcom/huawei/hms/framework/network/grs/g/c;->a:Landroid/content/Context;

    invoke-direct {v4, v6, v7}, Lcom/huawei/hms/framework/network/grs/g/l/c;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/huawei/hms/framework/network/grs/g/l/c;->a(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/huawei/hms/framework/network/grs/g/c;->c:Lcom/huawei/hms/framework/network/grs/e/a;

    invoke-virtual {v6}, Lcom/huawei/hms/framework/network/grs/e/a;->c()Lcom/huawei/hms/framework/network/grs/e/c;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_99

    const-string v8, "services"

    invoke-virtual {v6, v8, v1}, Lcom/huawei/hms/framework/network/grs/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_80
    invoke-virtual {v4}, Lcom/huawei/hms/framework/network/grs/g/l/c;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/huawei/hms/framework/network/grs/g/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_88
    .catch Lorg/json/JSONException; {:try_start_80 .. :try_end_88} :catch_89

    goto :goto_90

    :catch_89
    move-exception v1

    const-string v9, "getGeoipCountry merge services occure jsonException."

    invoke-static {v5, v9, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v7

    :goto_90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_99

    invoke-virtual {v6, v8, v1}, Lcom/huawei/hms/framework/network/grs/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_99
    if-eqz p1, :cond_c5

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/g/c;->c:Lcom/huawei/hms/framework/network/grs/e/a;

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/e/a;->b()Lcom/huawei/hms/framework/network/grs/g/i;

    move-result-object p1

    invoke-virtual {p1, v4, v3, v6}, Lcom/huawei/hms/framework/network/grs/g/i;->a(Lcom/huawei/hms/framework/network/grs/g/l/c;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/e/c;)Lcom/huawei/hms/framework/network/grs/g/e;

    move-result-object p1

    if-eqz p1, :cond_b0

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/g/e;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v2}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    :cond_b0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync request to query geoip.countrycode is:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d3

    :cond_c5
    const-string p1, "async request to query geoip.countrycode"

    invoke-static {v5, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/g/c;->c:Lcom/huawei/hms/framework/network/grs/e/a;

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/e/a;->b()Lcom/huawei/hms/framework/network/grs/g/i;

    move-result-object p1

    invoke-virtual {p1, v4, v7, v3, v6}, Lcom/huawei/hms/framework/network/grs/g/i;->a(Lcom/huawei/hms/framework/network/grs/g/l/c;Lcom/huawei/hms/framework/network/grs/b;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/e/c;)V

    :cond_d3
    :goto_d3
    return-object v0
.end method
