.class public Landroid/provider/MiuiSettings$Global;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# direct methods
.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
