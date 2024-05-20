"use strict";
/*
 * ATTENTION: An "eval-source-map" devtool has been used.
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file with attached SourceMaps in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
self["webpackHotUpdate_N_E"]("app/login/page",{

/***/ "(app-pages-browser)/./app/login/page.js":
/*!***************************!*\
  !*** ./app/login/page.js ***!
  \***************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

eval(__webpack_require__.ts("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! react/jsx-dev-runtime */ \"(app-pages-browser)/./node_modules/next/dist/compiled/react/jsx-dev-runtime.js\");\n/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! react */ \"(app-pages-browser)/./node_modules/next/dist/compiled/react/index.js\");\n/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(react__WEBPACK_IMPORTED_MODULE_1__);\n/* harmony import */ var _component_Input__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../component/Input */ \"(app-pages-browser)/./app/component/Input.js\");\n/* harmony import */ var _component_Button__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../component/Button */ \"(app-pages-browser)/./app/component/Button.js\");\n/* harmony import */ var _login_module_css__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! ./login.module.css */ \"(app-pages-browser)/./app/login/login.module.css\");\n/* harmony import */ var _login_module_css__WEBPACK_IMPORTED_MODULE_7___default = /*#__PURE__*/__webpack_require__.n(_login_module_css__WEBPACK_IMPORTED_MODULE_7__);\n/* harmony import */ var react_toastify__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! react-toastify */ \"(app-pages-browser)/./node_modules/react-toastify/dist/react-toastify.esm.mjs\");\n/* harmony import */ var react_toastify_dist_ReactToastify_css__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! react-toastify/dist/ReactToastify.css */ \"(app-pages-browser)/./node_modules/react-toastify/dist/ReactToastify.css\");\n/* harmony import */ var next_navigation__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! next/navigation */ \"(app-pages-browser)/./node_modules/next/navigation.js\");\n/* harmony import */ var next_navigation__WEBPACK_IMPORTED_MODULE_6___default = /*#__PURE__*/__webpack_require__.n(next_navigation__WEBPACK_IMPORTED_MODULE_6__);\n/* __next_internal_client_entry_do_not_use__ default auto */ \nvar _s = $RefreshSig$();\n\n\n\n\n\n\n\nfunction Login(props) {\n    _s();\n    const router = (0,next_navigation__WEBPACK_IMPORTED_MODULE_6__.useRouter)();\n    async function checkLogin(data) {\n        try {\n            const response = await fetch(\"http://localhost/services/wp-json/jwt-auth/v1/token\", {\n                method: \"POST\",\n                headers: {\n                    \"Content-Type\": \"application/json\"\n                },\n                body: JSON.stringify(data)\n            });\n            const result = await response.json();\n            //   console.log(\n            //     \"Success:\",\n            //     result.data.status,\n            //     typeof result.data.status,\n            //     result.message\n            //   );\n            console.log(result.message);\n            if (result.data && result.data.status == 403) {\n                const tempElement = document.createElement(\"div\");\n                tempElement.innerHTML = result.message;\n                const plainTextMessage = tempElement.textContent || tempElement.innerText || \"\";\n                //console.log(\"hiiii\");\n                react_toastify__WEBPACK_IMPORTED_MODULE_4__.toast.error(plainTextMessage, {\n                    position: \"top-right\",\n                    autoClose: 5000,\n                    hideProgressBar: false,\n                    closeOnClick: true,\n                    pauseOnHover: true,\n                    draggable: true,\n                    progress: undefined,\n                    theme: \"light\"\n                });\n            }\n            if (result.token) {\n                react_toastify__WEBPACK_IMPORTED_MODULE_4__.toast.success(\"Login Successful\", {\n                    position: \"top-right\",\n                    autoClose: 4000,\n                    hideProgressBar: false,\n                    closeOnClick: true,\n                    pauseOnHover: true,\n                    draggable: true,\n                    progress: undefined,\n                    theme: \"light\"\n                });\n                setTimeout(()=>{\n                    router.push(\"/\");\n                }, 5000);\n            }\n        } catch (error) {\n            console.error(\"Error:\", error);\n        }\n    }\n    const handleSubmit = (e)=>{\n        e.preventDefault();\n        const fd = new FormData(e.target);\n        const enterdEmail = fd.get(\"email\");\n        const enterdPassword = fd.get(\"psw\");\n        const resDeata = {\n            username: enterdEmail,\n            password: enterdPassword\n        };\n        e.target.reset();\n        checkLogin(resDeata);\n    };\n    return /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.Fragment, {\n        children: [\n            /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"div\", {\n                className: (_login_module_css__WEBPACK_IMPORTED_MODULE_7___default().login_form),\n                children: [\n                    /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"h1\", {\n                        className: (_login_module_css__WEBPACK_IMPORTED_MODULE_7___default().header),\n                        children: \"Login\"\n                    }, void 0, false, {\n                        fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\login\\\\page.js\",\n                        lineNumber: 90,\n                        columnNumber: 9\n                    }, this),\n                    /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"form\", {\n                        onSubmit: handleSubmit,\n                        children: /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"div\", {\n                            className: (_login_module_css__WEBPACK_IMPORTED_MODULE_7___default().form_container),\n                            children: [\n                                /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(_component_Input__WEBPACK_IMPORTED_MODULE_2__[\"default\"], {\n                                    className: \"input_wrapper\",\n                                    type: \"email\",\n                                    placeholder: \"Enter Email\",\n                                    name: \"email\",\n                                    required: true,\n                                    children: \"Enter Email\"\n                                }, void 0, false, {\n                                    fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\login\\\\page.js\",\n                                    lineNumber: 93,\n                                    columnNumber: 13\n                                }, this),\n                                /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(_component_Input__WEBPACK_IMPORTED_MODULE_2__[\"default\"], {\n                                    className: \"input_wrapper\",\n                                    type: \"password\",\n                                    placeholder: \"Enter Password\",\n                                    name: \"psw\",\n                                    required: true,\n                                    children: \"Enter Password\"\n                                }, void 0, false, {\n                                    fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\login\\\\page.js\",\n                                    lineNumber: 102,\n                                    columnNumber: 13\n                                }, this),\n                                /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(_component_Button__WEBPACK_IMPORTED_MODULE_3__[\"default\"], {\n                                    type: \"submit\",\n                                    className: \"registerbtn\",\n                                    children: [\n                                        \" \",\n                                        \"Login\"\n                                    ]\n                                }, void 0, true, {\n                                    fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\login\\\\page.js\",\n                                    lineNumber: 111,\n                                    columnNumber: 13\n                                }, this)\n                            ]\n                        }, void 0, true, {\n                            fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\login\\\\page.js\",\n                            lineNumber: 92,\n                            columnNumber: 11\n                        }, this)\n                    }, void 0, false, {\n                        fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\login\\\\page.js\",\n                        lineNumber: 91,\n                        columnNumber: 9\n                    }, this)\n                ]\n            }, void 0, true, {\n                fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\login\\\\page.js\",\n                lineNumber: 89,\n                columnNumber: 7\n            }, this),\n            /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_toastify__WEBPACK_IMPORTED_MODULE_4__.ToastContainer, {}, void 0, false, {\n                fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\login\\\\page.js\",\n                lineNumber: 118,\n                columnNumber: 7\n            }, this)\n        ]\n    }, void 0, true);\n}\n_s(Login, \"fN7XvhJ+p5oE6+Xlo0NJmXpxjC8=\", false, function() {\n    return [\n        next_navigation__WEBPACK_IMPORTED_MODULE_6__.useRouter\n    ];\n});\n_c = Login;\n/* harmony default export */ __webpack_exports__[\"default\"] = (Login);\nvar _c;\n$RefreshReg$(_c, \"Login\");\n\n\n;\n    // Wrapped in an IIFE to avoid polluting the global scope\n    ;\n    (function () {\n        var _a, _b;\n        // Legacy CSS implementations will `eval` browser code in a Node.js context\n        // to extract CSS. For backwards compatibility, we need to check we're in a\n        // browser context before continuing.\n        if (typeof self !== 'undefined' &&\n            // AMP / No-JS mode does not inject these helpers:\n            '$RefreshHelpers$' in self) {\n            // @ts-ignore __webpack_module__ is global\n            var currentExports = module.exports;\n            // @ts-ignore __webpack_module__ is global\n            var prevSignature = (_b = (_a = module.hot.data) === null || _a === void 0 ? void 0 : _a.prevSignature) !== null && _b !== void 0 ? _b : null;\n            // This cannot happen in MainTemplate because the exports mismatch between\n            // templating and execution.\n            self.$RefreshHelpers$.registerExportsForReactRefresh(currentExports, module.id);\n            // A module can be accepted automatically based on its exports, e.g. when\n            // it is a Refresh Boundary.\n            if (self.$RefreshHelpers$.isReactRefreshBoundary(currentExports)) {\n                // Save the previous exports signature on update so we can compare the boundary\n                // signatures. We avoid saving exports themselves since it causes memory leaks (https://github.com/vercel/next.js/pull/53797)\n                module.hot.dispose(function (data) {\n                    data.prevSignature =\n                        self.$RefreshHelpers$.getRefreshBoundarySignature(currentExports);\n                });\n                // Unconditionally accept an update to this module, we'll check if it's\n                // still a Refresh Boundary later.\n                // @ts-ignore importMeta is replaced in the loader\n                module.hot.accept();\n                // This field is set when the previous version of this module was a\n                // Refresh Boundary, letting us know we need to check for invalidation or\n                // enqueue an update.\n                if (prevSignature !== null) {\n                    // A boundary can become ineligible if its exports are incompatible\n                    // with the previous exports.\n                    //\n                    // For example, if you add/remove/change exports, we'll want to\n                    // re-execute the importing modules, and force those components to\n                    // re-render. Similarly, if you convert a class component to a\n                    // function, we want to invalidate the boundary.\n                    if (self.$RefreshHelpers$.shouldInvalidateReactRefreshBoundary(prevSignature, self.$RefreshHelpers$.getRefreshBoundarySignature(currentExports))) {\n                        module.hot.invalidate();\n                    }\n                    else {\n                        self.$RefreshHelpers$.scheduleUpdate();\n                    }\n                }\n            }\n            else {\n                // Since we just executed the code for the module, it's possible that the\n                // new exports made it ineligible for being a boundary.\n                // We only care about the case when we were _previously_ a boundary,\n                // because we already accepted this update (accidental side effect).\n                var isNoLongerABoundary = prevSignature !== null;\n                if (isNoLongerABoundary) {\n                    module.hot.invalidate();\n                }\n            }\n        }\n    })();\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,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O0FBR3JCO0dBL0dTRzs7UUFDUUQsc0RBQVNBOzs7S0FEakJDO0FBaUhULCtEQUFlQSxLQUFLQSxFQUFDIiwic291cmNlcyI6WyJ3ZWJwYWNrOi8vX05fRS8uL2FwcC9sb2dpbi9wYWdlLmpzPzZhZmQiXSwic291cmNlc0NvbnRlbnQiOlsiXCJ1c2UgY2xpZW50XCI7XG5pbXBvcnQgUmVhY3QgZnJvbSBcInJlYWN0XCI7XG5pbXBvcnQgSW5wdXQgZnJvbSBcIi4uL2NvbXBvbmVudC9JbnB1dFwiO1xuaW1wb3J0IEJ1dHRvbiBmcm9tIFwiLi4vY29tcG9uZW50L0J1dHRvblwiO1xuaW1wb3J0IGNsYXNzZXMgZnJvbSBcIi4vbG9naW4ubW9kdWxlLmNzc1wiO1xuaW1wb3J0IHsgVG9hc3RDb250YWluZXIsIHRvYXN0IH0gZnJvbSBcInJlYWN0LXRvYXN0aWZ5XCI7XG5pbXBvcnQgXCJyZWFjdC10b2FzdGlmeS9kaXN0L1JlYWN0VG9hc3RpZnkuY3NzXCI7XG5pbXBvcnQgeyB1c2VSb3V0ZXIgfSBmcm9tIFwibmV4dC9uYXZpZ2F0aW9uXCI7XG5cbmZ1bmN0aW9uIExvZ2luKHByb3BzKSB7XG4gIGNvbnN0IHJvdXRlciA9IHVzZVJvdXRlcigpO1xuICBhc3luYyBmdW5jdGlvbiBjaGVja0xvZ2luKGRhdGEpIHtcbiAgICB0cnkge1xuICAgICAgY29uc3QgcmVzcG9uc2UgPSBhd2FpdCBmZXRjaChcbiAgICAgICAgXCJodHRwOi8vbG9jYWxob3N0L3NlcnZpY2VzL3dwLWpzb24vand0LWF1dGgvdjEvdG9rZW5cIixcbiAgICAgICAge1xuICAgICAgICAgIG1ldGhvZDogXCJQT1NUXCIsIC8vIG9yICdQVVQnXG4gICAgICAgICAgaGVhZGVyczoge1xuICAgICAgICAgICAgXCJDb250ZW50LVR5cGVcIjogXCJhcHBsaWNhdGlvbi9qc29uXCIsXG4gICAgICAgICAgfSxcbiAgICAgICAgICBib2R5OiBKU09OLnN0cmluZ2lmeShkYXRhKSxcbiAgICAgICAgfVxuICAgICAgKTtcblxuICAgICAgY29uc3QgcmVzdWx0ID0gYXdhaXQgcmVzcG9uc2UuanNvbigpO1xuICAgICAgLy8gICBjb25zb2xlLmxvZyhcbiAgICAgIC8vICAgICBcIlN1Y2Nlc3M6XCIsXG4gICAgICAvLyAgICAgcmVzdWx0LmRhdGEuc3RhdHVzLFxuICAgICAgLy8gICAgIHR5cGVvZiByZXN1bHQuZGF0YS5zdGF0dXMsXG4gICAgICAvLyAgICAgcmVzdWx0Lm1lc3NhZ2VcbiAgICAgIC8vICAgKTtcblxuICAgICAgY29uc29sZS5sb2cocmVzdWx0Lm1lc3NhZ2UpO1xuICAgICAgaWYgKHJlc3VsdC5kYXRhICYmIHJlc3VsdC5kYXRhLnN0YXR1cyA9PSA0MDMpIHtcbiAgICAgICAgY29uc3QgdGVtcEVsZW1lbnQgPSBkb2N1bWVudC5jcmVhdGVFbGVtZW50KFwiZGl2XCIpO1xuICAgICAgICB0ZW1wRWxlbWVudC5pbm5lckhUTUwgPSByZXN1bHQubWVzc2FnZTtcbiAgICAgICAgY29uc3QgcGxhaW5UZXh0TWVzc2FnZSA9XG4gICAgICAgICAgdGVtcEVsZW1lbnQudGV4dENvbnRlbnQgfHwgdGVtcEVsZW1lbnQuaW5uZXJUZXh0IHx8IFwiXCI7XG5cbiAgICAgICAgLy9jb25zb2xlLmxvZyhcImhpaWlpXCIpO1xuICAgICAgICB0b2FzdC5lcnJvcihwbGFpblRleHRNZXNzYWdlLCB7XG4gICAgICAgICAgcG9zaXRpb246IFwidG9wLXJpZ2h0XCIsXG4gICAgICAgICAgYXV0b0Nsb3NlOiA1MDAwLFxuICAgICAgICAgIGhpZGVQcm9ncmVzc0JhcjogZmFsc2UsXG4gICAgICAgICAgY2xvc2VPbkNsaWNrOiB0cnVlLFxuICAgICAgICAgIHBhdXNlT25Ib3ZlcjogdHJ1ZSxcbiAgICAgICAgICBkcmFnZ2FibGU6IHRydWUsXG4gICAgICAgICAgcHJvZ3Jlc3M6IHVuZGVmaW5lZCxcbiAgICAgICAgICB0aGVtZTogXCJsaWdodFwiLFxuICAgICAgICB9KTtcbiAgICAgIH1cblxuICAgICAgaWYgKHJlc3VsdC50b2tlbikge1xuICAgICAgICB0b2FzdC5zdWNjZXNzKFwiTG9naW4gU3VjY2Vzc2Z1bFwiLCB7XG4gICAgICAgICAgcG9zaXRpb246IFwidG9wLXJpZ2h0XCIsXG4gICAgICAgICAgYXV0b0Nsb3NlOiA0MDAwLFxuICAgICAgICAgIGhpZGVQcm9ncmVzc0JhcjogZmFsc2UsXG4gICAgICAgICAgY2xvc2VPbkNsaWNrOiB0cnVlLFxuICAgICAgICAgIHBhdXNlT25Ib3ZlcjogdHJ1ZSxcbiAgICAgICAgICBkcmFnZ2FibGU6IHRydWUsXG4gICAgICAgICAgcHJvZ3Jlc3M6IHVuZGVmaW5lZCxcbiAgICAgICAgICB0aGVtZTogXCJsaWdodFwiLFxuICAgICAgICB9KTtcbiAgICAgICAgc2V0VGltZW91dCgoKSA9PiB7XG4gICAgICAgICAgcm91dGVyLnB1c2goXCIvXCIpO1xuICAgICAgICB9LCA1MDAwKTtcbiAgICAgIH1cbiAgICB9IGNhdGNoIChlcnJvcikge1xuICAgICAgY29uc29sZS5lcnJvcihcIkVycm9yOlwiLCBlcnJvcik7XG4gICAgfVxuICB9XG5cbiAgY29uc3QgaGFuZGxlU3VibWl0ID0gKGUpID0+IHtcbiAgICBlLnByZXZlbnREZWZhdWx0KCk7XG4gICAgY29uc3QgZmQgPSBuZXcgRm9ybURhdGEoZS50YXJnZXQpO1xuICAgIGNvbnN0IGVudGVyZEVtYWlsID0gZmQuZ2V0KFwiZW1haWxcIik7XG4gICAgY29uc3QgZW50ZXJkUGFzc3dvcmQgPSBmZC5nZXQoXCJwc3dcIik7XG5cbiAgICBjb25zdCByZXNEZWF0YSA9IHtcbiAgICAgIHVzZXJuYW1lOiBlbnRlcmRFbWFpbCxcbiAgICAgIHBhc3N3b3JkOiBlbnRlcmRQYXNzd29yZCxcbiAgICB9O1xuICAgIGUudGFyZ2V0LnJlc2V0KCk7XG5cbiAgICBjaGVja0xvZ2luKHJlc0RlYXRhKTtcbiAgfTtcbiAgcmV0dXJuIChcbiAgICA8PlxuICAgICAgPGRpdiBjbGFzc05hbWU9e2NsYXNzZXMubG9naW5fZm9ybX0+XG4gICAgICAgIDxoMSBjbGFzc05hbWU9e2NsYXNzZXMuaGVhZGVyfT5Mb2dpbjwvaDE+XG4gICAgICAgIDxmb3JtIG9uU3VibWl0PXtoYW5kbGVTdWJtaXR9PlxuICAgICAgICAgIDxkaXYgY2xhc3NOYW1lPXtjbGFzc2VzLmZvcm1fY29udGFpbmVyfT5cbiAgICAgICAgICAgIDxJbnB1dFxuICAgICAgICAgICAgICBjbGFzc05hbWU9XCJpbnB1dF93cmFwcGVyXCJcbiAgICAgICAgICAgICAgdHlwZT1cImVtYWlsXCJcbiAgICAgICAgICAgICAgcGxhY2Vob2xkZXI9XCJFbnRlciBFbWFpbFwiXG4gICAgICAgICAgICAgIG5hbWU9XCJlbWFpbFwiXG4gICAgICAgICAgICAgIHJlcXVpcmVkPXt0cnVlfVxuICAgICAgICAgICAgPlxuICAgICAgICAgICAgICBFbnRlciBFbWFpbFxuICAgICAgICAgICAgPC9JbnB1dD5cbiAgICAgICAgICAgIDxJbnB1dFxuICAgICAgICAgICAgICBjbGFzc05hbWU9XCJpbnB1dF93cmFwcGVyXCJcbiAgICAgICAgICAgICAgdHlwZT1cInBhc3N3b3JkXCJcbiAgICAgICAgICAgICAgcGxhY2Vob2xkZXI9XCJFbnRlciBQYXNzd29yZFwiXG4gICAgICAgICAgICAgIG5hbWU9XCJwc3dcIlxuICAgICAgICAgICAgICByZXF1aXJlZD17dHJ1ZX1cbiAgICAgICAgICAgID5cbiAgICAgICAgICAgICAgRW50ZXIgUGFzc3dvcmRcbiAgICAgICAgICAgIDwvSW5wdXQ+XG4gICAgICAgICAgICA8QnV0dG9uIHR5cGU9XCJzdWJtaXRcIiBjbGFzc05hbWU9XCJyZWdpc3RlcmJ0blwiPlxuICAgICAgICAgICAgICB7XCIgXCJ9XG4gICAgICAgICAgICAgIExvZ2luXG4gICAgICAgICAgICA8L0J1dHRvbj5cbiAgICAgICAgICA8L2Rpdj5cbiAgICAgICAgPC9mb3JtPlxuICAgICAgPC9kaXY+XG4gICAgICA8VG9hc3RDb250YWluZXIgLz5cbiAgICA8Lz5cbiAgKTtcbn1cblxuZXhwb3J0IGRlZmF1bHQgTG9naW47XG4iXSwibmFtZXMiOlsiUmVhY3QiLCJJbnB1dCIsIkJ1dHRvbiIsImNsYXNzZXMiLCJUb2FzdENvbnRhaW5lciIsInRvYXN0IiwidXNlUm91dGVyIiwiTG9naW4iLCJwcm9wcyIsInJvdXRlciIsImNoZWNrTG9naW4iLCJkYXRhIiwicmVzcG9uc2UiLCJmZXRjaCIsIm1ldGhvZCIsImhlYWRlcnMiLCJib2R5IiwiSlNPTiIsInN0cmluZ2lmeSIsInJlc3VsdCIsImpzb24iLCJjb25zb2xlIiwibG9nIiwibWVzc2FnZSIsInN0YXR1cyIsInRlbXBFbGVtZW50IiwiZG9jdW1lbnQiLCJjcmVhdGVFbGVtZW50IiwiaW5uZXJIVE1MIiwicGxhaW5UZXh0TWVzc2FnZSIsInRleHRDb250ZW50IiwiaW5uZXJUZXh0IiwiZXJyb3IiLCJwb3NpdGlvbiIsImF1dG9DbG9zZSIsImhpZGVQcm9ncmVzc0JhciIsImNsb3NlT25DbGljayIsInBhdXNlT25Ib3ZlciIsImRyYWdnYWJsZSIsInByb2dyZXNzIiwidW5kZWZpbmVkIiwidGhlbWUiLCJ0b2tlbiIsInN1Y2Nlc3MiLCJzZXRUaW1lb3V0IiwicHVzaCIsImhhbmRsZVN1Ym1pdCIsImUiLCJwcmV2ZW50RGVmYXVsdCIsImZkIiwiRm9ybURhdGEiLCJ0YXJnZXQiLCJlbnRlcmRFbWFpbCIsImdldCIsImVudGVyZFBhc3N3b3JkIiwicmVzRGVhdGEiLCJ1c2VybmFtZSIsInBhc3N3b3JkIiwicmVzZXQiLCJkaXYiLCJjbGFzc05hbWUiLCJsb2dpbl9mb3JtIiwiaDEiLCJoZWFkZXIiLCJmb3JtIiwib25TdWJtaXQiLCJmb3JtX2NvbnRhaW5lciIsInR5cGUiLCJwbGFjZWhvbGRlciIsIm5hbWUiLCJyZXF1aXJlZCJdLCJzb3VyY2VSb290IjoiIn0=\n//# sourceURL=webpack-internal:///(app-pages-browser)/./app/login/page.js\n"));

/***/ })

});