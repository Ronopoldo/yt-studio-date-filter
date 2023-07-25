function getLink() {
    let startDate = document.getElementById("startDate").value;
    let endDate = document.getElementById("endDate").value;
    if (startDate === "") {
        alert("НЕТ ДАТЫ НАЧАЛА");
        return;
    } else if (endDate === "") {
        alert("НЕТ ДАТЫ КОНЦА");
        return;
    }
    if (new Date(startDate) > new Date(endDate)) {
        alert("ДАТА НАЧАЛА ДОЛЖНА ИДТИ ПОСЛЕ ДАТЫ КОНЦА");
        return;
    }
    startDate = startDate.split("-");
    endDate = endDate.split("-");
    console.log(endDate);
    console.log(startDate);
    let outLink = `https://studio.youtube.com/channel/UCP2oEd3q8m4JAIZ5rfSQZAA/videos/upload?filter=%5B%7B%22name%22%3A%22VIDEO_DATE%22%2C%22value%22%3A%7B%22end%22%3A%7B%22day%22%3A${Number(endDate[2])}%2C%22month%22%3A${Number(endDate[1]) - 1}%2C%22year%22%3A${endDate[0]}%7D%2C%22start%22%3A%7B%22day%22%3A${Number(startDate[2])}%2C%22month%22%3A${Number(startDate[1]) - 1}%2C%22year%22%3A${startDate[0]}%7D%7D%7D%5D`;
    open(outLink);
    document.getElementById("result").innerHTML = outLink;
    document.getElementById("result").setAttribute("href", outLink);
}
