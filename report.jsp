<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="" />
    <script src=""></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>

</head>
<style>
body {
    margin: 0;
    font-family: Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
    font-size: .8125rem;
    font-weight: 400;
    line-height: 1.5385;
    color: #333;
    text-align: left;
    background-color: #eee
}

.mt-50 {
    margin-top: 50px
}

.mb-50 {
    margin-bottom: 50px
}

.card {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid rgba(0, 0, 0, .125);
    border-radius: .1875rem
}

.card-img-actions {
    position: relative
}

.card-body {
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 1.25rem;
    text-align: center
}

.card-title {
    margin-top: 10px;
    font-size: 17px
}

.invoice-color {
    color: red !important
}

.card-header {
    padding: .9375rem 1.25rem;
    margin-bottom: 0;
    background-color: rgba(0, 0, 0, .02);
    border-bottom: 1px solid rgba(0, 0, 0, .125)
}

a {
    text-decoration: none !important
}

.btn-light {
    color: #333;
    background-color: #fafafa;
    border-color: #ddd
}

.header-elements-inline {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-align: center;
    align-items: center;
    -ms-flex-pack: justify;
    justify-content: space-between;
    -ms-flex-wrap: nowrap;
    flex-wrap: nowrap
}

@media (min-width: 768px) {
    .wmin-md-400 {
        min-width: 400px !important
    }
}

.btn-primary {
    color: #fff;
    background-color: #2196f3
}

.btn-labeled>b {
    position: absolute;
    top: -1px;
    background-color: blue;
    display: block;
    line-height: 1;
    padding: .62503rem
}
</style>
<body>
    <div class="container d-flex justify-content-center mt-50 mb-50">
        <div class="row">
            <div class="col-md-12 text-right mb-3">
                <button class="btn btn-primary" id="download"> download pdf</button>
            </div>
            <div class="col-md-12">
                <div class="card" id="invoice">
                    <div class="card-header bg-transparent header-elements-inline">
                        <h3 class="invoice-color mb-2 mt-md-2">TIME TABLE</h3>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="mb-4 pull-left">

                                    <ul class="list list-unstyled mb-0 text-left">
                                        <li>Student Affairs</li>
                                        <li>salrouni.com</li>
                                        <li>SALRO UNIVERSITY </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="mb-4 ">
                                    <div class="text-sm-right">
                                        <h7 class="font-weight-semibold">Faculty Of Computing</h7>
                                        <ul class="list list-unstyled mb-0">
                                            <li>Date: <span class="font-weight-semibold">3rd Year</span></li>
                                            <li>Due date: <span class="font-weight-semibold">1st Semester</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="d-md-flex flex-md-wrap">
                            <div class="mb-4 mb-md-2 text-left"> <span class="text-muted">Time Table To:</span>
                                <ul class="list list-unstyled mb-0">
                                    <li>
                                        <h6 class="my-2">All Students</h6>
                                    </li>
                                    <li><span class="font-weight-semibold">Group Details</span></li>
                                    <li>Group ID-21</li>
                                    <li>Group Number-2</li>
                                    <li>Program-IT</li>
                                    <li>Sub Group Number-3</li>
                                    <li><a href="#" data-abc="true">tibco@samantha.com</a></li>
                                </ul>
                            </div>
                            <div class="mb-2 ml-auto"> <span class="text-muted">Session Details:</span>
                                <div class="d-flex flex-wrap wmin-md-400">
                                    <ul class="list list-unstyled mb-0 text-left">
                                        <li>
                                            <h5 class="my-2"></h5>
                                        </li>
                                        <li>Lecture 1:</li>
                                        <li>Lecture 2:</li>
                                        <li>Lab 1:</li>
                                        <li>Lab 2:</li>
                                     
                                    </ul>
                                    <ul class="list list-unstyled text-right mb-0 ml-auto">
                                        <li>
                                         3</li>
                                        <li>2</li>
                                        <li>Consective</li>
                                        <li>Parallel</li>
                                        <li>Not Time Allocations</li>
                                        <li><span class="font-weight-semibold">Non-Overlapping</span></li>
                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-lg">
                            <thead>
                                <tr>
                                    <th><h5>Monday</h5></th>
                                    <th><h5>Tuesday</h5></th>
                                    <th><h5>Wednesday</h5></th>
                                    <th><h5>Thursday</h5></th>
                                    <th><h5>Friday</h5></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <h7 class="mb-0">DS</h6> <span class="text-muted">IT3010</span> <span class="text-muted">6.30-8.30 am</span><span class="text-muted"> Session 1</span>
                                    </td>
                                   <td><h7 class="mb-0">NDM</h6> <span class="text-muted">IT3030</span> <span class="text-muted">9.30-11.30 am</span><span class="text-muted"> Session 2</span> </td>
                                    <td><h7 class="mb-0">ITPM</h6> <span class="text-muted">IT3040</span> <span class="text-muted">1.30-2.30 pm</span><span class="text-muted"> Session 4</span></td>
                                    <td><h7 class="mb-0">PAF</h6> <span class="text-muted">IT3050</span> <span class="text-muted">3.30-5.30 pm</span><span class="text-muted"> Session 3</span></td>
                                   <td> <h7 class="mb-0">ESD</h6> <span class="text-muted">IT3020</span> <span class="text-muted">5.30-7.30 pm</span><span class="text-muted"> Session 6</span></h7></td>
                                </tr>
                                <tr>
                                    <td>
                                       <h7 class="mb-0">PAF</h6> <span class="text-muted">IT3050</span> <span class="text-muted">6.30-9.30 am</span><span class="text-muted"> Session 2</span>
                                    </td>
                                    <td><h7 class="mb-0">ITPM</h6> <span class="text-muted">IT3040</span> <span class="text-muted">8.30-11.30 pm</span><span class="text-muted"> Session 3</span></td>
                                    <td><h7 class="mb-0">DS</h6> <span class="text-muted">IT3010</span> <span class="text-muted">1.30-3.30 pm</span><span class="text-muted"> Session 5</span></td>
                                    <td><h7 class="mb-0">ESD</h6> <span class="text-muted">IT3020</span> <span class="text-muted">4.30-5.30 pm</span><span class="text-muted"> Session 4</span></td>
                                    <td><h7 class="mb-0">NDM</h6> <span class="text-muted">IT3030</span> <span class="text-muted">5.30-7.30 pm</span><span class="text-muted"> Session 1</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <h7 class="mb-0">ITPM</h6> <span class="text-muted">IT3040</span> <span class="text-muted">6.30-8.30 am</span><span class="text-muted"> Session 5</span>
                                    </td>
                                    <td><h7 class="mb-0">PAF</h6> <span class="text-muted">IT3050</span> <span class="text-muted">8.30-11.30 pm</span><span class="text-muted"> Session 2</span></td>
                                    <td><h7 class="mb-0">DS</h6> <span class="text-muted">IT3010</span> <span class="text-muted">1.30-2.30 pm</span><span class="text-muted"> Session 3</span></td>
                                    <td><h7 class="mb-0">ESD</h6> <span class="text-muted">IT3020</span> <span class="text-muted">4.30-6.30 pm</span><span class="text-muted"> Session 4</span></td>
                                    <td><h7 class="mb-0">NDM</h6> <span class="text-muted">IT3030</span> <span class="text-muted">6.30-7.30 pm</span><span class="text-muted"> Session 1</span></td>
                                </tr>
                                 <tr>
                                    <td>
                                        <h7 class="mb-0">PAF</h6> <span class="text-muted">IT3050</span> <span class="text-muted">6.30-8.30 am</span><span class="text-muted"> Session 4</span>
                                    </td>
                                    <td><h7 class="mb-0">NDM</h6> <span class="text-muted">IT3030</span> <span class="text-muted">8.30-10.30 am</span><span class="text-muted"> Session 3</span></td>
                                    <td><h7 class="mb-0">ITPM</h6> <span class="text-muted">IT3040</span> <span class="text-muted">1.30-2.30 pm</span><span class="text-muted"> Session 2</span></td>
                                    <td><h7 class="mb-0">DS</h6> <span class="text-muted">IT3020</span> <span class="text-muted">11.30.30-12.30 pm</span><span class="text-muted"> Session 5</span></td>
                                    <td><h7 class="mb-0">ESD</h6> <span class="text-muted">IT3040</span> <span class="text-muted">5.30-7.30 pm</span><span class="text-muted"> Session 1</span></td>
                                </tr>
                                 <tr>
                                    <td>
                                        <h7 class="mb-0">ESD</h6> <span class="text-muted">IT3020</span> <span class="text-muted">6.30 -8.30 am</span><span class="text-muted"> Session 5</span>
                                    </td>
                                    <td><h7 class="mb-0">ITPM</h6> <span class="text-muted">IT3040</span> <span class="text-muted">8.30-10.30 am</span><span class="text-muted"> Session 4</span></td>
                                    <td><h7 class="mb-0">NDM</h6> <span class="text-muted">IT3030</span> <span class="text-muted">12.30-2.30 pm</span><span class="text-muted"> Session 3</span></td>
                                    <td><h7 class="mb-0">PAF</h6> <span class="text-muted">IT3050</span> <span class="text-muted">3.30-5.30 pm</span><span class="text-muted"> Session 2</span></td>
                                    <td><h7 class="mb-0">DS</h6> <span class="text-muted">IT3020</span> <span class="text-muted">5.30-7.30 pm</span><span class="text-muted"> Session 1</span></td>
                                </tr>
                               </tbody>
                        </table>
                    </div>
                    <div class="card-body">
                        <div class="d-md-flex flex-md-wrap">
                            <div class="pt-2 mb-3 wmin-md-400 ml-auto">
                                <h6 class="mb-3 text-left">Group Shedule</h6>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <th class="text-left">Lectures:</th>
                                                <td class="text-right">Monday-Wednesday</td>
                                            </tr>
                                            <tr>
                                                <th class="text-left">Lab: <span class="font-weight-normal"></span></th>
                                                <td class="text-right">Thursday-Friday</td>
                                            </tr>
                                            <tr>
                                                <th class="text-left">Project/Assignment:</th>
                                                <td class="text-right ">Weekend</td>
                                                    
                                              
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="text-right mt-3"> <button type="button" class="btn btn-primary"><b><i class="fa fa-paper-plane-o mr-1"></i></b>
                                        Send Timetable</button> </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer"> <span class="text-muted"></span> </div>
                </div>
            </div>
        </div>
    </div>
    <script>
    window.onload = function () {
    document.getElementById("download")
        .addEventListener("click", () => {
            const invoice = this.document.getElementById("invoice");
            console.log(invoice);
            console.log(window);
            var opt = {
                margin: 1,
                filename: 'timetable.pdf',
                image: { type: 'jpeg', quality: 0.98 },
                html2canvas: { scale: 2 },
                jsPDF: { unit: 'in', format: 'letter', orientation: 'portrait' }
            };
            html2pdf().from(invoice).set(opt).save();
        })
}
    </script>
</body>

</html>